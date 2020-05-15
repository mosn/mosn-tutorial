# 贡献手册

本手册将帮助您了解如何向 MOSN Tutorial 中贡献教程。

## 基本概念

在 Katacoda 平台上每个用户都可以免费学习和创建课程，其中：

- Course：课程，可包含一系列的 scenarios，MOSN 账户的 course 地址是 <https://www.katacoda.com/mosn/>。
- Scenarios：场景、教程，`mosn-tutorial` 对应的 scenarios 地址是 <https://www.katacoda.com/mosn/courses/mosn-tutorials>。

MOSN Tutorial 中 Course 和 Scenarios 是一对多的关系，一个 Course 下可以只包含一个 Scenarios 也可以是多个，根据场景而定。

## 准备

本教程基于 GitHub 协作，和 Katacoda 平台托管，在创建教程之前需要先准备以下步骤。

### Fork 本仓库

请先 fork 本仓库到自己的 GitHub 账号下，然后克隆 fork 出来的仓库开发。开发完成后向本仓库的 master 分支提交 PR，合并后就会发布到 Katacoda 上。

### 安装 Katacoda 命令行工具

使用下面的命令安装 Katacoda 命令行工具。

```bash
npm i katacoda-cli --global
```

该命令遵循语法的是 `$ katacoda COMMAND`

安装完成后，可以通过运行命令 `katacoda --help` 查看帮助信息。

## 创建 Course

在本仓库的根目录下使用命令 `katacoda courses:create` 创建 Course。

CLI 将会提示您如下问题：

- **Title**：课程的标题，将会显示在简介上。
- **Description**：课程的描述，将会显示在简介上。
- **Friendly-url**：此处可输入 `test-course`，该属性将确定课程文件夹的名称，以及用来访问它的 URL（该属性不能包括空格，全部为小写字母），则指向该课程的 URL 将为 <https://katacoda.com/mosn/courses/test-course/>。

在生成的 `test-course-pathway.json`文件中可以看到刚才生成的课程定义：

```json
{
  "title": "test-course",
  "description": "Example course",
  "courses": []
}
```

## 创建 Scenarios

要创建新的教程，请在 course 的根目录下（如上文创建的 `test-course` 目录下，运行命令 `katacoda scenarios:create`，CLI 将会提示一些信息，帮助您创建教程：

- **Friendly URL**：此处可输入 `test-scenario`，该属性将确定 scenarios 文件夹的名称，以及用来访问它的 URL。因此，该属性不能包括空格，必须全为小写字母。平台中指向该教程的 URL 将为 <https://katacoda.com/mosn/courses/test-course/test-scenario/>。
- **Title**：教程的标题，将会显示在简介上。
- **Description**教程的描述，将会显示在简介上。
- **Difficulty level**难度级别，将会显示在简介上。
- **Estimated time**：估计完成的时间，将会显示在简介上。
- **Number of steps**：教程的步骤数。CLI 将会为您的所有步骤创建文件。
- **Image**：确定适用于您的教程的基本软件。例如，如果 Docker、java、go 等作为前提条件，我们默认使用 ` kubernetes-cluster` 镜像。更多相关信息，请参考 <https://katacoda.com/docs/scenarios/environments>。
- **Layout**：它将确定教程界面元素的配置。例如，如果您只想显示终端，或编辑器+终端等形式，更多相关信息，请阅读 <https://katacoda.com/docs/scenarios/layouts>。

输入这些信息，CLI 将帮您创建一个文件夹，其中引入了 **friendly URL** 的名称，并将在该文件夹内创建教程所需的文件。

### 编辑 Scenario

Scenarios 目录创建好之后，可以看到目录的结构：

```bash
.
├── finish.md
├── index.json
├── intro.md
├── step1.md
├── step2.md
├── step3.md
├── step4.md
└── step5.md
```

- `index.json` ：文件中定义了标题、描述、步骤顺序、UI 布局以及所需环境，内容与您使用 CLI 工具创建时输入的是一致的，如果想对输入的内容进行修改，也可以在这里修改
- `intro.md`：介绍页，用来介绍您这个 Scenarios
- `finish.md` ：结束页
- `step1-setpN.md`：步骤介绍，数目与您使用 CLI 工具创建 Scenarios 时输入的数目相同

## 添加 Scenarios 到课程中

运行以下命令将现有的 scenarios 添加到课程中： `katacoda courses:add:scenarios`

CLI 将提示您以下问题：

- Scenario path：type `./test-scenario`（这个路径是现有 scenarios 的相对路径）
- Course path：type `./test-course`（这个路径是课程的相对路径)

**提示：建议将 scenarios 放在对应 course 的目录下。**

然后选择是否要将 scenario 复制或移动到课程文件夹。

现在，就可以看到 scenario 已添加到 `test-course` 中了：

```json
{
  "title": "test-course",
  "description": "Example course",
  "courses": [
    {
      "course_id": "test-scenarios",
      "title": "Test scenarios",
      "description": "This is a test scenario."
    }
  ]
```

## 参考

本文参考了 Istio Handbook 中的 [Katacoda 实验环境](https://katacoda.com/courses/docker)。