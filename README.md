<<<<<<< HEAD
<h1><span style="color:#2d7eea">README - Your LookML Project</span></h1>

<h2><span style="color:#2d7eea">LookML Overview</span></h2>

LookML is a data modeling language for describing dimensions, fields, aggregates and relationships based on SQL.

LookML is powerful because it:

- **Is all about reusability**: Most data analysis requires the same work to be done over and over again. You extract
raw data, prepare it, deliver an analysis... and then are never able touse any of that work again. This is hugely
inefficient, since the next analysis often involves many of the same steps. With LookML, once you define a
dimension or a measure, you continue to build on it, rather than having to rewrite it again and again.
- **Empowers end users**:  The data model that data analysts and developers create in LookML condenses and
encapsulates the complexity of SQL, it and lets analysts get the knowledge about what their data means out of
their heads so others can use it. This enables non-technical users to do their jobs &mdash; building dashboards,
drilling to row-level detail, and accessing complex metrics &mdash; without having to worry about what’s behind the curtain.
- **Allows for data governance**: By defining business metrics in LookML, you can ensure that Looker is always a
credible single source of truth.

The Looker application uses a model written in LookML to construct SQL queries against a particular database that
business analysts can [Explore](https://cloud.google.com/looker/docs/r/exploring-data) on. For an overview on the basics of LookML, see [What is LookML?](https://cloud.google.com/looker/docs/r/what-is-lookml)

<h2><span style="color:#2d7eea">Learn to Speak Looker</span></h2>

A LookML project is a collection of LookML files that describes a set of related [views](https://cloud.google.com/looker/docs/r/terms/view-file), [models](https://cloud.google.com/looker/docs/r/terms/model-file), and [Explores](https://cloud.google.com/looker/docs/r/terms/explore).
- A [view](https://cloud.google.com/looker/docs/r/terms/view-file) (.view files) contains information about how to access or calculate information from each table (or
across multiple joined tables). Here you’ll typically define the view, its dimensions and measures, and its field sets.
- A [model](https://cloud.google.com/looker/docs/r/terms/model-file) (.model file) contains information about which tables to use and how they should be joined together.
Here you’ll typically define the model, its Explores, and its joins.
- An [Explore](https://cloud.google.com/looker/docs/r/terms/explore) is the starting point for business users to query data, and it is the end result of the LookML you are
writing. To see the Explores in this project, select an Explore from the Explore menu.

<h2><span style="color:#2d7eea">Exploring Data</span></h2>

Ad-hoc data discovery is one of Looker’s most powerful and unique features. As you evaluate use cases for your
trial, consider what business areas you would like to explore. Open the Explore menu in the main navigation to see
the Explores you are building.

<h2><span style="color:#2d7eea">The Development Workflow</span></h2>

To support a multi-developer environment, Looker is integrated with Git for version control. Follow [these directions](https://cloud.google.com/looker/docs/r/develop/git-setup)
to set up Git for your project. To edit LookML, expand the Develop drop-down and toggle on [Development Mode](https://cloud.google.com/looker/docs/r/terms/dev-mode). In
Development Mode, changes you make to the LookML model exist only in your account until you commit the
changes and push them to your production model.

<h2><span style="color:#2d7eea">Additional Resources</span></h2>

To learn more about LookML and how to develop visit:
- [Looker User Guide](https://looker.com/guide)
- [Looker Help Center](https://help.looker.com)
- [Looker University](https://training.looker.com/)
=======

# Google Cloud Armor

## Why use the Google Cloud Armor Looker Block?

The Cloud Armor block allows you to export Google Global Load-Balancing security data related to Web Application Security (WAF), from Google Cloud Armor, and analyze it in Looker. The flexibility of the data model gives you the ability to integrate security, traffic and web application metrics, to perform security monitoring and analysis of your Google Cloud resources protected by Cloud Armor.

## Block Structure

Included in the Block:

- Policy hit counts for Permitted and Blocked ressources
- Top 10 Count of Requests by Status Details
- Top 10 Count of Requests by User Agent
- Top 10 Count of Requests by HTTP Request URL
- Top 10 Count of Requests by Configured Action
- Http/s metrics like 2xx, 4xx and 5xx

For more information on the Block structure and customization, refer to Looker Marketplace Documentation


## Technical installation


### Pre-requisites


Cloud Armor is a security service that is running in the Google Cloud Global Load-Balancer (GLB), logs are created inside the GLB logs in Cloud Logging.


For the Block to work, you will need to :

- Create a BigQuery Dataset
- Create a Service Account for Looker to access the Dataset
- Assign IAM role “BigQuery Data Viewer” & “BigQuery Job User” to the Service Account for this project
- Create a Log router sink in Cloud Logging, where Sink destination is the BigQuery Dataset that you created and using this filter to include Cloud Armor Logs from the GLB logs: “resource.type:(http_load_balancer) AND jsonPayload.enforcedSecurityPolicy.name:(“$CLOUD_ARMOR_POLICY_NAME”)”

You might need to add additional policy in your Log sink filter in order to capture all of your Cloud Armor policies.


### Installation steps

Install this block from the marketplace

Required installation parameters:
**CONNECTION_NAME**: name of the database connection for the Cloud Armor dataset in BigQuery
**DATASET_NAME**: the [project.dataset] in BigQuery where Cloud Armor data is stored

Access the block from Browse - Applications & Tools - Google Cloud Armor Block or the LookML dashboards folder (/folders/lookml). You can customize these dashboards by copying them into one of your instance folders.

### What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Google Cloud community and we'd love your input. To report an error or improvement recommendation, please reach out to us via email to google-cloud-security-dashboards@google.com to submit a request. Please be as detailed as possible in your explanation and we'll address it as quickly as we can.
>>>>>>> branch 'dev-fernando-carreira-h6cj' of https://github.com/fcarreirSD/block-cloud-armor.git
