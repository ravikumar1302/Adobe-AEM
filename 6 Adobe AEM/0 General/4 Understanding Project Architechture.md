# Understanding an AEM Project – Quick Guide

When you download an AEM project, you’ll typically see folders like `ui.core`, `ui.apps`, and `ui.frontend`. Here’s a concise breakdown to help you navigate it.

---

## 1. Project Structure Overview

| Folder             | Purpose                                            |
| ------------------ | -------------------------------------------------- |
| `core` / `ui.core` | Java code – Sling Models, Servlets, OSGi Services  |
| `ui.apps`          | AEM Components, templates, dialogs, and clientlibs |
| `ui.content`       | Site structure and pages (`/content`)              |
| `ui.frontend`      | JS/CSS using Webpack; outputs to clientlibs        |
| `it.tests`         | Integration test cases                             |
| `dispatcher`       | Dispatcher config (if present)                     |

---

## 2. What Is This Project For?

-   Check `README.md` if present.
-   Look inside `/content/[your-site]` in CRXDE to see if it’s a full site or a feature.
-   Check `/apps/[your-project]/components` to view reusable UI pieces.

---

## 3. Key Code Areas

-   **Sling Models** (`ui.core`): Backend Java classes with `@Model`, pulling data from JCR.
-   **Components** (`ui.apps`): HTML (HTL), JS, dialogs, and CSS; core of UI rendering.
-   **Clientlibs**: JS/CSS folders grouped under `clientlibs-site` or per component.
-   **Frontend** (`ui.frontend`): Optional Webpack-based build for assets.

---

## 4. Running the Project Locally

1. **Build and deploy**  
   Run from project root:

    ```
    mvn clean install -PautoInstallSinglePackage
    ```

2. **Access locally**  
   AEM Author: `http://localhost:4502`  
   Default login: `admin / admin`

3. **Explore in CRXDE**  
   Visit: `http://localhost:4502/crx/de`  
   Browse `/apps`, `/content`, and components.

4. **Sites Console**  
   Preview your site at: `/sites.html/content/[your-project]`

---

## 5. Tools to Know

-   **CRXDE Lite** – View/edit repository content
-   **AEM Plugin (IntelliJ/Brackets)** – Easier development sync
-   **Logs** – Watch `error.log` in `crx-quickstart/logs` for debugging

---

## 6. What to Learn First (If You're New)

-   **Sling Models** – Bridge between Java and content
-   **HTL (Sightly)** – Templating language for UI
-   **Dialogs** – Author-side form fields for components
-   **Component Lifecycle** – Understand how components are authored, rendered, and cached

---

## 🔗 Helpful Resources

-   [AEM Core Concepts (Adobe)](https://experienceleague.adobe.com/docs/experience-manager.html)
-   [HTL Documentation](https://experienceleague.adobe.com/en/docs/experience-manager-htl/content/overview)
-   [CRXDE Lite](http://localhost:4502/crx/de)

💡 **Tip:** Pick a simple component, change its model or HTML, and see the change live — it’s the fastest way to learn.
