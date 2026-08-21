# AGENTS.md

## 📌 项目开发规范与技术指南 (Project Development Specification)

本文件是 Ponlly 的核心开发规范指南。Codex 在执行任何代码修改、UI 还原、逻辑重构或功能迭代时，必须严格遵守本指南，以确保包的代码特征与 App Store 审核规范完全合规。

## ⚙️ 0. App 数据设计和总体流程设计
项目数据设计采用本地数据，模拟真实app用户交互 生成的相关用户数据，用户相关动态数据，交互数据，用户关系链表等等相结来展现的。生成UI还原度高，交互友好真实感强的代码。
项目主模块在app登录时候就展示，逻辑上展现的是没登录状态的样式。当点击到某些需要用户信息的地方时候，就跳转app登录注册模块的欢迎页面（比如点赞，关注，举报，对话，没登录状态时候个人中心所有按钮，发布，参与，内购等等），登录注册成功更新本地登录用户状态和信息

## ⚙️ 1. App 基础信息 (App Identity)
* **App ID：
* **App 标题：Ponlly：Street Art
* **App 副标题：
* **蓝湖设计链接： https://lanhuapp.com/web/#/item/project/stage?pid=d6304251-8575-4a8b-b4c8-fbd72394ee61&tid=8c379c32-0bd6-44ae-ab3b-cfb09ffccdbf


* **App Store 描述：
Ideas don’t always start on paper—sometimes they begin in conversation. PonCall is a place where street graffiti sparks talk, reactions, and shared creativity. From fresh tags to half-finished walls, graffiti becomes the reason people start talking.Jump into graffiti voice rooms and trade thoughts on styles, markers, textures, or the spots that inspired you recently. Outside the rooms, the feed stays active with sketches and street moments that keep conversations moving without pressure. The built-in AI adds creative prompts and theme ideas when you want to push your style further.PonCall also supports graffiti-focused video chats, giving users a direct way to show sketches, break down visual ideas in real time. It’s casual, expressive, and built around sharing—not profiles.
---


## 🎯 3. App 定位与边界限制 (App Positioning)

* **项目属性：** 本项目是一个基于 UIKit 框架的 iOS 移动端 App。
* **开发核心约束：** Codex 在修改本项目时，必须始终围绕 **App 标题**、**App 描述**、**蓝湖设计图**和**命名词汇范围**进行开发，禁止引入任何与多语言交流、语言学习及异国文化交友主题无关的功能、文案、命名或 UI 元素。
* **冲突解决优先级：** 如果设计图、App 描述、现有代码之间存在冲突，严格遵循以下优先级：
1. **蓝湖设计图**
2. **App 标题和 App 描述**
3. **本文件 AGENTS.md**
4. **现有代码实现**


* **不确定业务处理：** 如遇到不确定的业务含义，优先根据 App 描述进行判断，**严禁自行扩展无关功能**。



## 🎨 5. UI & UX 整体适配要求 (UI Standards)

* **设计还原度：** 必须严格参考蓝湖设计图还原页面，不得为了图省事擅自更改布局、删减图层或替换核心组件。
* **视觉一致性：** 维持整体视觉规范，禁止私自更换主色调、字体家族、圆角阶梯以及按钮样式。
* **跨机型屏幕适配：** 界面必须完美适配大至 iPhone Pro Max、小至 SE 的各类尺寸屏幕。
* **安全区域约束 (SafeArea)：** 顶部布局必须动态避开刘海、灵动岛、系统状态栏；底部布局必须完整避开 Home Indicator 边缘。
* **键盘交互拦截：** 严禁出现键盘弹出时输入框或核心动作按钮被遮挡的体验问题。内容较多时必须支持滑动（ScrollView），且点击空白处能自动收起键盘。
* **控制台警报控制：** 修改或调试后，Xcode 控制台绝不能高频抛出 `overflow`、`constraint conflict`（约束冲突）或严重的渲染布局错误。

---

## 🔐 6. 登录注册与本地数据闭环规则 

本项目登录注册模块采用**本地状态闭环方案**。

### 6.1 固定测试账号
账号：ponlly@gmail.com    密码：555666

### 6.2 欢迎页面与合规 EULA 规则

1. **首次激活冷启动：** 用户首次进入欢迎页时，必须自动弹出专门 **EULA（最终用户许可协议）**。
2. **EULA 文案核心要求：** **
elua内容需要结合app描述和apple审核规则生成。协议中必须明文包含：**用户行为规范、账号注册门槛、年龄与本地身份合法性检查、举报与拉黑机制、严厉的内容审查和违规惩罚条例。
3. **状态绑定：** 用户点击“Agree（同意）”后，立刻将同意状态写入本地。同时，欢迎页底部的“已阅读并同意”复选框必须自动同步勾选。用户在界面上手动勾选/取消，也必须双向绑定至这一本地持久化键值中。
4. **条款跳转：** 欢迎页底部的“隐私政策（Privacy Policy）”与“用户条款（Terms of Service）”按钮必须保证可用，点击后能够平滑跳转至对应的路由页面。

### 6.3 登录流程与逻辑分支

1. 用户在 UI 交互层输入 `email` 和 `password`。
2. 客户端非空校验：若为空，给出相应的提示，且中断后续逻辑。
3.登录接口请求。登录成功后，从模拟响应字典中解析并保存 `userID`、`Token` 等基础凭证，准入。
4. **非测试账号分支：** 检查本地持久化存储（如本地数据库/沙盒缓存）中是否存在该 `email` 的注册记录：
* 若本地完全没有该邮箱记录，明确提示：英文“账号不存在”
* 若本地存在该邮箱记录但密码错误，明确提示：英文“密码错误”
* *(注：严禁将上述两种提示合并或模糊化处理为“账号或密码错误”)*


5. **登录成功：** 状态机变更，保存登录态及用户信息，紧接着平滑切换或推入 App 的主 Tab 主页面。

### 6.4 注册流程与逻辑

1. 用户输入 `email` 和 `password`。
2. 格式合法性校验：严格检验 `email` 的规范格式，且限制 `password` 的长度**至少为 6 位**。
3. **防重注册校验：** 检索本地，若该 `email` 已存在注册记录，弹出提示
4. **完善资料：** 若邮箱无重复，引导用户进入“完善资料页面”。资料页中的属性（如昵称、头像等）请根据蓝湖设计图进行提取，且每次实现时的变量名和假数据需结合专属词汇池进行特色替换。
5. **落盘持久化：** 注册流程完毕后，将用户数据同步写入本地，将全局变量 `appname+login` 设为 `true`，`appname+Email` 设为当前邮箱。
6. **状态重启恢复：** 确保应用彻底杀死重启后，依然能够不间断读取到当前登录的用户状态与资料。

### 6.5 个人中心展示与登出

* **读取规则：** 个人中心、我的页面、详情资料卡等区域，**必须绝对优先**读取本地当前登录的用户数据。若沙盒内暂无该字段数据，必须使用兜底的默认占位符或默认头像，**严禁发生致命崩溃（Crash）**。
* **退出登录规则：** 点击退出登录后，**仅清除**当前的登录状态标识位（如将 `hooviisLoggedIn` 设为 `false`），**绝对禁止删除或抹除**本地已经注册的其他用户数据。


## 📱 7. UIKit 项目特别要求 (UIKit Special Demands)

由于本项目采用 UIKit 编写，Codex 必须追加遵守以下技术底线：

* **视图约束：** 视图层级严禁死写坐标轴。必须全部使用 `safeAreaLayoutGuide` 锚点和 Auto Layout 自动布局进行相对约束。
* **键盘通知监听：** 必须注册并处理 `keyboardWillShow` 与 `keyboardWillHide` 通知，动态计算 `UIKeyboardFrameEndUserInfoKey`，平滑抬高输入容器。
* **滚动轴边距更新：** 键盘推起或拉回时，需配合正确修正 `scrollView.contentInset` 和 `scrollIndicatorInsets` 的边距，保证滚动通畅。
* **持久化选型：** 本地数据存储必须优先沿用项目中现有的持久化工具类。若原项目无现成方案，方可使用标准 `UserDefaults` 或者是等价的安全沙盒方案。

---

## 🚫 8. 核心禁止事项 (Strictly Prohibited)

* **禁止硬接真实服务器：** 绝对不要直接去对接真实的商业化线上后端，也不允许去接入 Firebase、Supabase 或其他的云数据库，除非得到明确指示。
* **禁止删除核心页面：** 严禁直接破坏、重命名或剔除现有的核心业务页面与网络拦截器链路。
* **禁止文本交叉污染：** 严禁直接复制其他毫不相干应用的标题、描述、内购关键词、协议条款或页面名字过来。
* **禁止不完整的 UI 还原：** 绝不能仅仅做个好看的 UI 壳子，而不去实现本地数据的读写逻辑闭环。
* **禁止硬编码适配：** 严禁使用大量写死尺寸（如固定宽高、硬编码固定偏移量）导致的小屏设备适配失败。

---

## 🔐 9. 主模块的二级界面

进入所有二级界面需要隐藏底部的tabbar，返回一级界面再显示tabbar 
## 🔄 9. 任务执行与回复规范 (Workflow & Reply Template)

### 9.1 开始前的强制前置检查

Codex 每次接手并开始动手修改代码前，必须先按顺序自检以下 5 项：

1. 是否已通读并完全理解本 `AGENTS.md` 的全部规则？
2. 是否已对齐  标题、描述以及其专属命名词汇范围？
3. 即将编写的功能是否契合app的主题？
4. 当前修改会不会对登录注册流程、本地用户数据落盘或个人中心读取造成破坏？
5. 当前编写的 UI 约束是否完美覆盖了 SafeArea、键盘遮挡和大/小屏 iPhone 适配？

### 9.2 修改完成后的结构化回复要求

每次代码修改、逻辑微调或页面提交完成后，Codex 必须在回复的最上方，严格依照以下**标准结构体**进行详细汇报汇报：

```markdown
### 📢 任务修改执行报告

1. **修改了哪些文件：** (请详细列出受影响的文件相对路径)
2. **每个文件解决了什么问题：** (请简要说明修改的目的与修复的缺陷)
3. **是否影响登录注册流程：** (是/否，并说明影响范围)
4. **是否影响本地用户数据：** (是/否，是否破坏了本地持久化闭环)
5. **是否检查了 iOS 适配和键盘交互：** (请确认大小屏、SafeArea 及键盘遮挡自检结果)
6. **如何测试本次修改：** (请给出具体的黑盒/白盒测试步骤，以便开发者快速验证)

```

## 🔤 4. 命名词汇范围与规范 (Naming Vocabulary & Standards)

### 4.1 语义合规要求


* **保持命名纯净：** 杜绝残留或混用其他模板项目的异形名称、业务词或文案样式。所有英文文案应做到自然、地道、简洁。

### 4.2 文件、类名与组件规范

* **文件和目录：** 文件名必须清晰表达功能，拉开特征，防止命名模版化和本地其他项目代码关联。
* **类与类组件：** 类名、组件名采用“业务前缀 + 业务清晰含义名”组合。严禁使用无意义命名

项目相关词汇
graffitiPulse,aerosolDream,streetMural,wallCraft,paintFlow,sprayRhythm,urbanCanvas,brickPalette,inkDrift,markerStroke,nozzleCraft,capControl,stencilBloom,wheatpasteLayer,pasteupEcho,muralGrid,wildstyleCurve,bubbleLetter,chromeFill,outlineGlow,dropShadow,paintMist,colorSplash,neonDrip,concreteMuse,alleyCanvas,railYard,underpassMural,sketchRush,lineBurst,letterForm,fillPattern,strokeWeight,paintLayer,sprayBloom,wallTexture,brickTone,gritSurface,urbanPatina,paintRun,dripTrail,inkBleed,markerNib,wideNib,chiselNib,fineLine,fatCap,skinnyCap,softCap,cleanOutline,hardOutline,shadowLayer,highlightStroke,whitePop,chromeShine,colorFade,gradientFill,paintCloud,sprayHalo,aerosolHaze,nozzleMist,wallMark,streetGlyph,letterMaze,curveFlow,angleBreak,edgeSnap,shapeStack,layerBlend,roughFill,solidFill,splitFill,twoToneFill,acidGreenFill,cyanGlow,magentaBurst,limeStroke,blackOutline,whiteEdge,silverSheen,primerCoat,paintBase,finalCoat,clearCoat,matteFinish,glossFinish,metallicSpray,neonSpray,inkMarker,paintMarker,mopMarker,dripMarker,squeezeMarker,solidMarker,streakMarker,brushMarker,acrylicMarker,enamelPaint,latexPaint,sprayCan,paintCan,capRack,nozzleSet,colorRack,paintShelf,canShake,rattleSound,pressureFlow,fanSpray,dotSpray,lineSpray,fadeSpray,shadowSpray,stencilCut,stencilSheet,maskingTape,edgeMask,layerMask,paperCut,bladeLine,cutoutShape,sprayShield,oversprayGlow,pasteBrush,rollerPaste,wallPaste,paperLayer,printLayer,grainPrint,monoPrint,colorPrint,streetPosterStyle,handbillTexture,pulpPaper,weatheredPaper,tornEdge,rippedCorner,pasteWrinkle,adhesiveLayer,wallPeel,paintPeel,chippedPaint,crackedWall,brickCrack,cementRough,plasterDust,rustStreak,metalPanel,garageDoor,shutterPanel,freightPanel,alleyDoor,sidewalkEdge,curbLine,drainCover,pipeShadow,fireEscape,roofLine,warehouseWall,tunnelWall,bridgePillar,underpassBeam,concreteColumn,brickFacade,paintedFence,woodPanel,steelGate,rollingShutter,utilityBox,trafficBarrier,signBack,blankFacade,nightWall,dawnWall,rainWall,sunlitWall,shadowWall,hiddenWall,legalWall,practiceWall,studioWall,canvasWall,sketchWall,muralWall,letterWall,colorWall,textureWall,paintMap,wallMap,styleMap,colorMap,lineMap,shapeMap,dripMap,layerMap,canMap,capMap,strokeMap,muralPlan,wallPlan,colorPlan,sketchPlan,layerPlan,paintPlan,outlinePlan,shadowPlan,fillPlan,stencilPlan,pastePlan,graffitiLab,aerosolLab,letterLab,colorLab,wallLab,styleLab,markerLab,stencilLab,muralLab,paintLab,dripLab,textureLab,urbanLab,sketchLab,shapeLab,outlineLab,chromeLab,neonLab,inkLab,canvasLab,graffitiMuse,aerosolMuse,muralMuse,streetMuse,paintMuse,inkMuse,letterMuse,wallMuse,colorMuse,styleMuse,dripMuse,textureMuse,sketchMuse,urbanMuse,neonMuse,chromeMuse,shadowMuse,stencilMuse,pasteMuse,markerMuse,graffitiForge,aerosolForge,muralForge,letterForge,paintForge,inkForge,styleForge,colorForge,wallForge,dripForge,shadowForge,outlineForge,stencilForge,markerForge,urbanForge,textureForge,sketchForge,chromeForge,neonForge,pasteForge,graffitiDraft,aerosolDraft,muralDraft,letterDraft,paintDraft,inkDraft,wallDraft,colorDraft,styleDraft,shadowDraft,outlineDraft,stencilDraft,markerDraft,textureDraft,urbanDraft,sketchDraft,chromeDraft,neonDraft,pasteDraft,dripDraft,graffitiSketch,aerosolSketch,muralSketch,letterSketch,paintSketch,inkSketch,wallSketch,colorSketch,styleSketch,shadowSketch,outlineSketch,stencilSketch,markerSketch,textureSketch,urbanSketch,chromeSketch,neonSketch,pasteSketch,dripSketch,wildstyleSketch,bubbleSketch,throwieSketch,pieceSketch,muralPiece,letterPiece,chromePiece,neonPiece,colorPiece,wallPiece,outlinePiece,shadowPiece,dripPiece,stencilPiece,pastePiece,markerPiece,inkPiece,stylePiece,urbanPiece,texturePiece,paintPiece,aerosolPiece,graffitiPiece,quickPiece,cleanPiece,roughPiece,boldPiece,sharpPiece,softPiece,widePiece,tallPiece,compactPiece,flowPiece,anglePiece,curvePiece,arrowPiece,haloPiece,burstPiece,fadePiece,glowPiece,grimePiece,gritPiece,freshPiece,layerPiece,nightPiece,dawnPiece,railPiece,tunnelPiece,alleyPiece,bridgePiece,brickPiece,steelPiece,concretePiece,warehousePiece,shutterPiece,fencePiece,rooftopPiece,cornerPiece,pillarPiece,facadePiece,urbanLetter,aerosolLetter,paintLetter,inkLetter,muralLetter,wildstyleLetter,bubbleLettering,blockyLetter,sharpLetter,softLetter,wideLetter,tallLetter,compactLetter,angularLetter,curvedLetter,brokenLetter,stackedLetter,linkedLetter,loopedLetter,flaredLetter,shadowedLetter,outlinedLetter,chromeLetter,neonLetter,dripLetter,glowLetter,roughLetter,cleanLetter,boldLetter,skinnyLetter,fatLetter,letterGrid,letterFlow,letterSnap,letterArc,letterLean,letterSwing,letterKick,letterBend,letterStretch,letterTwist,letterWeave,letterPuzzle,letterRhythm,letterBalance,letterContrast,letterWeight,letterSpacing,letterOverlap,letterDepth,letterDimension,letterShadow,letterHighlight,letterFill,letterStroke,letterFrame,letterCrown,letterSpark,letterFlare,letterEcho,letterAura,letterDust,letterGrit,letterNoise,letterTexture,styleDrift,styleBurst,styleShift,stylePulse,styleEcho,styleForge,styleFrame,styleCue,styleSeed,stylePrompt,styleSpark,styleMood,stylePath,styleFlow,styleGrid,styleArc,styleBend,styleKick,styleLean,styleTwist,styleWeave,styleLayer,styleDepth,styleGlow,styleGrit,styleNoise,styleTexture,styleContrast,styleBalance,styleRhythm,styleMotion,paintSignal,paintQuest,paintCue,paintSeed,paintSpark,paintMood,paintPath,paintFlowline,paintArc,paintBend,paintKick,paintLean,paintTwist,paintWeave,paintDepth,paintGlow,paintGrit,paintNoise,paintTexture,paintContrast,paintBalance,paintRhythm,paintMotion,paintCascade,paintRipple,paintSurge,paintBurst,paintCrush,paintBloom,paintFlicker,paintFlash,paintFuse,paintTrace,paintTrail,paintVeil,paintAura,paintEcho,inkSignal,inkQuest,inkCue,inkSeed,inkSpark,inkMood,inkPath,inkArc,inkBend,inkKick,inkLean,inkTwist,inkWeave,inkDepth,inkGlow,inkGrit,inkNoise,inkTexture,inkContrast,inkBalance,inkRhythm,inkMotion,inkCascade,inkRipple,inkSurge,inkBurst,inkBloom,inkFlicker,inkFlash,inkFuse,inkTrace,inkTrail,inkVeil,inkAura,inkEcho,wallSignal,wallQuest,wallCue,wallSeed,wallSpark,wallMood,wallPath,wallFlowline,wallArc,wallBend,wallKick,wallLean,wallTwist,wallWeave,wallDepth,wallGlow,wallGrit,wallNoise,wallContrast,wallBalance,wallRhythm,wallMotion,wallCascade,wallRipple,wallSurge,wallBurst,wallBloom,wallFlicker,wallFlash,wallFuse,wallTrace,wallTrail,wallVeil,wallAura,wallEcho,aerosolSignal,aerosolQuest,aerosolCue,aerosolSeed,aerosolSpark,aerosolMood,aerosolPath,aerosolArc,aerosolBend,aerosolKick,aerosolLean,aerosolTwist,aerosolWeave,aerosolDepth,aerosolGlow,aerosolGrit,aerosolNoise,aerosolTexture,aerosolContrast,aerosolBalance,aerosolRhythm,aerosolMotion,aerosolCascade,aerosolRipple,aerosolSurge,aerosolBurst,aerosolBloom,aerosolFlicker,aerosolFlash,aerosolFuse,aerosolTrace,aerosolTrail,aerosolVeil,aerosolAura,aerosolEcho,muralSignal,muralQuest,muralCue,muralSeed,muralSpark,muralMood,muralPath,muralFlowline,muralArc,muralBend,muralKick,muralLean,muralTwist,muralWeave,muralDepth,muralGlow,muralGrit,muralNoise,muralTexture,muralContrast,muralBalance,muralRhythm,muralMotion,muralCascade,muralRipple,muralSurge,muralBurst,muralBloom,muralFlicker,muralFlash,muralFuse,muralTrace,muralTrail,muralVeil,muralAura,muralEcho,stencilSignal,stencilQuest,stencilCue,stencilSeed,stencilSpark,stencilMood,stencilPath,stencilArc,stencilBend,stencilKick,stencilLean,stencilTwist,stencilWeave,stencilDepth,stencilGlow,stencilGrit,stencilNoise,stencilTexture,stencilContrast,stencilBalance,stencilRhythm,stencilMotion,stencilCascade,stencilRipple,stencilSurge,stencilBurst,stencilBloom,stencilFlicker,stencilFlash,stencilFuse,stencilTrace,stencilTrail,stencilVeil,stencilAura,stencilEcho,markerSignal,markerQuest,markerCue,markerSeed,markerSpark,markerMood,markerPath,markerArc,markerBend,markerKick,markerLean,markerTwist,markerWeave,markerDepth,markerGlow,markerGrit,markerNoise,markerTexture,markerContrast,markerBalance,markerRhythm,markerMotion,markerCascade,markerRipple,markerSurge,markerBurst,markerBloom,markerFlicker,markerFlash,markerFuse,markerTrace,markerTrail,markerVeil,markerAura,markerEcho,chromeSignal,chromeQuest,chromeCue,chromeSeed,chromeSpark,chromeMood,chromePath,chromeArc,chromeBend,chromeKick,chromeLean,chromeTwist,chromeWeave,chromeDepth,chromeGlow,chromeGrit,chromeNoise,chromeTexture,chromeContrast,chromeBalance,chromeRhythm,chromeMotion,chromeCascade,chromeRipple,chromeSurge,chromeBurst,chromeBloom,chromeFlicker,chromeFlash,chromeFuse,chromeTrace,chromeTrail,chromeVeil,chromeAura,chromeEcho,neonSignal,neonQuest,neonCue,neonSeed,neonSpark,neonMood,neonPath,neonArc,neonBend,neonKick,neonLean,neonTwist,neonWeave,neonDepth,neonGlow,neonGrit,neonNoise,neonTexture,neonContrast,neonBalance,neonRhythm,neonMotion,neonCascade,neonRipple,neonSurge,neonBurst,neonBloom,neonFlicker,neonFlash,neonFuse,neonTrace,neonTrail,neonVeil,neonAura,neonEcho,sketchSignal,sketchQuest,sketchCue,sketchSeed,sketchSpark,sketchMood,sketchPath,sketchArc,sketchBend,sketchKick,sketchLean,sketchTwist,sketchWeave,sketchDepth,sketchGlow,sketchGrit,sketchNoise,sketchTexture,sketchContrast,sketchBalance,sketchRhythm,sketchMotion,sketchCascade,sketchRipple,sketchSurge,sketchBurst,sketchBloom,sketchFlicker,sketchFlash,sketchFuse,sketchTrace,sketchTrail,sketchVeil,sketchAura,sketchEcho,textureSignal,textureQuest,textureCue,textureSeed,textureSpark,textureMood,texturePath,textureArc,textureBend,textureKick,textureLean,textureTwist,textureWeave,textureDepth,textureGlow,textureGrit,textureNoise,textureContrast,textureBalance,textureRhythm,textureMotion,textureCascade,textureRipple,textureSurge,textureBurst,textureBloom,textureFlicker,textureFlash,textureFuse,textureTrace,textureTrail,textureVeil,textureAura,textureEcho
