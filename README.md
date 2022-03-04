# YS mapping

Simple mapping and dashboarding tutorial

see webpage here: k-maciejewski.github.io/ys_mapping

**Tutorial here**: <https://k-maciejewski.github.io/YS_mapping/>

More info: [<https://github.com/k-maciejewski/Dashboarding>]

**Data from Johns Hopkins, updated daily** 

You can download here: [<https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series>]

If you load the data in with your Rcode, you can update with the most recently updated data (updated daily)

us_covid_confirmed<-read.csv("[https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv]")

us_covid_deaths<-read.csv("[https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv]")

For this project, use whatever you prefer. The second method may take longer for your code to run (and re-run/ re-clean), however, I wouldn't suggest it for this project

More info:

<https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data>

When creating your dashboard, you can use inspiration from:

The JHU dashboard (uses Arc GIS): <https://www.arcgis.com/apps/dashboards/bda7594740fd40299423467b48e9ecf6>

Links to other dashboards here: <https://github.com/CSSEGISandData/COVID-19>

Or use inspiration from web articles you've read, other graphics you've seen, etc

Attribute the data as the "COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University" or "JHU CSSE COVID-19 Data" for short, and the url: <https://github.com/CSSEGISandData/COVID-19>.

"Dong E, Du H, Gardner L. An interactive web-based dashboard to track COVID-19 in real time. Lancet Inf Dis. 20(5):533-534. doi: 10.1016/S1473-3099(20)30120-1"
