# What is HTL?

-   HTL (formerly known as Sightly) is the templating language used in Adobe Experience Manager (AEM). It lets front-end developers work with dynamic content securely and efficiently, without needing deep Java knowledge.

| What You Know           | How HTL Builds On It                                                                                               |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------ |
| **HTML**                | HTL is embedded _within_ HTML. You continue writing normal HTML with small additions like `data-sly-*` attributes. |
| **CSS**                 | HTL doesn’t interfere with your CSS. Stylesheets are linked and used the same way.                                 |
| **Templating Concepts** | If you’ve seen any templating (like Handlebars, JSX, or PHP), HTL will feel familiar.                              |

-   Example Comparison

```
    - HTML:  <h1>Welcome, User!</h1>
    - HTL: <h1>Welcome, ${user.name}!</h1>
    - With logic:
        <div data-sly-test="${user.loggedIn}">
            <p>Hello, ${user.name}!</p>
        </div>

```

## Key HTL Concepts to Learn (Very Basic):

```
    - ${variable} – Output variables
    - data-sly-test – Simple conditional rendering
    - data-sly-repeat – Looping through lists
    - data-sly-use – Linking to backend models/ Use backend Java model or JS script
    - data-sly-unwrap – Remove wrapping tag
    - data-sly-resource – Include a child component
    - data-sly-include – Include a static HTL file
    - data-sly-call and data-sly-template – Reusable templates
    - data-sly-element – Dynamic HTML tag
    - data-sly-list – More control over iteration

HTML remains intact – You’re just adding smart annotations
```

📝 HTL CHEAT SHEET
| HTL Directive | Description | Example |
| ------------------- | -------------------------- | ------------------------------------------------------------------------------------ |
| `${var}` | Output variable | `${title}` |
| `data-sly-test` | Conditional rendering | `<div data-sly-test="${user.loggedIn}">Welcome</div>` |
| `data-sly-repeat` | Loop through list | `<li data-sly-repeat.item="${items}">${item.name}</li>` |
| `data-sly-use` | Bind model or script | `<div data-sly-use.model="com.example.Model">` |
| `data-sly-resource` | Include child component | `<div data-sly-resource="${'hero' @ resourceType='project/components/hero'}"></div>` |
| `data-sly-include` | Include static HTL file | `<div data-sly-include="footer.html"></div>` |
| `data-sly-template` | Define a reusable template | `<template data-sly-template.greet="${@ name}">...</template>` |
| `data-sly-call` | Call a reusable template | `<div data-sly-call="${greet @ name='Alice'}"></div>` |
| `data-sly-list` | Loop with meta like index | `<p data-sly-list.item="${items}">${item} - ${itemList.index}</p>` |
| `data-sly-unwrap` | Remove wrapper tag | `<div data-sly-unwrap>${text}</div>` |
| `data-sly-element` | Set tag dynamically | `<div data-sly-element="${tag}">${content}</div>` |

## 🧪 HANDS-ON HTL EXAMPLE

🗂 Context : You’re working on an AEM component to display a list of team members, each with a name, role, and image.

💡 Backend Java Model (simplified)

```
        // com.example.core.models.TeamModel.java
        public interface TeamModel {
        List<TeamMember> getMembers();
        }

        public class TeamMember {
        private String name;
        private String role;
        private String imagePath;

            // Getters and Setters
        }
```

📄 HTL File (team.html)

```
    <div data-sly-use.team="com.example.core.models.TeamModel">
        <ul>
            <li data-sly-repeat.member="${team.members}">
            <img src="${member.imagePath}" alt="${member.name}" />
            <h3>${member.name}</h3>
            <p>${member.role}</p>
            </li>
        </ul>

        <div data-sly-test="${empty team.members}">
            <p>No team members found.</p>
        </div>

    </div>
```

🔄 Reusable Template Example:

-   Define in template.html:

```
    <template data-sly-template.card="${@ name, role }">
        <div class="card">
            <h4>${name}</h4>
            <span>${role}</span>
        </div>
    </template>
```

Use in another HTL file:

```
    <div data-sly-use.templates="template.html"
        data-sly-call="${templates.card @ name='John', role='Designer'}">
    </div>
```

🔐 Safe Output (Escaping Context)

```
    <a href="${link @ context='uri'}">${label @ context='html'}</a>
```
