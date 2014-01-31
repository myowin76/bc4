namespace :import do
  task :pages => :environment do
  	Web::Page.delete_all

        Web::Page.create(id: 1, name: 'Home', page_title: 'We are experts in global online corporate communications. We help you improve the effectiveness of your websites, mobile sites, 
                social channels and apps.', 
            page_intro: 'This site is filled with <a href="/our-thinking/presentations-reports/">practical advice</a> and <a href="/our-thinking/ft-bowen-craggs-index-analysis/">deep analysis</a> for online communications professionals. Browse or search Our thinking now.',
            url: 'home', body: 'Our thinking
                Insightful commentary, practical analysis and stimulating observation from our expert team led by veteran online commentator David Bowen.
                Keep up with our latest Commentaries on the corporate web Consult our twice-weekly BC Tips for best practice features',
            meta_title: 'Bowen Craggs', meta_desc: 'Bowen Craggs description', meta_keyword: 'Bowen Craggs meta_keyword',
            hide_on_nav: false, position: 0, created_at: Time.now
        )

        Web::Page.create(id: 2, name: 'About us', page_title: 'About Bowen Craggs', 
            page_intro: 'Bowen Craggs & Co is a unique research and consultancy group. Our sole focus is online corporate communications - websites, social media and apps.',
            url: 'about-us', body: '
                <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">Overview</h3>
                <p>Bowen Craggs &amp; Co helps large organisations maximise the effectiveness of their websites and other online tools, using techniques that we have refined over the past 15 years. Our goal is to help them close the gap between what they are doing online and what they could be doing.</p>
                <p>We start from the belief that an effective web presence should be aligned with business goals and visitors&rsquo; needs. We then help clients bring these closer together through internal, external and expert views that combine deep analysis with actionable recommendations.</p>
                <p>We are based in London, but have a worldwide client base. We have worked for more than 50 of the biggest global corporations as well as large public sector organisations.</p>
                <p>We have built up a powerful network of online communications professionals, including managers from more than 400 organisations in 26 countries. We have regular physical meetings, including an annual conference, as well as an online forum.</p>
                <p>Every year we publish the Financial Times Bowen Craggs Index of corporate online effectiveness, which is established as the most credible ranking of large corporate websites, and provides a deep database of best practice.</p>
                <p>On this site you will find (in English) coverage of the latest Index as well as a library of pieces written exclusively by David Bowen, our co-founder and a long-standing columnist for the Financial Times and ft.com. and other consultants from the company.</p>

            ',
            meta_title: 'What we do', meta_desc: 'about us description', meta_keyword: ' meta_keyword',
            hide_on_nav: false, position: 1, created_at: Time.now)
        Web::Page.create(id: 3, name: 'What we do', page_title: 'What we do', 
            page_intro: 'We help organisations turn their online communications into a set of powerful tools that polish their reputation, increase sales, satisfy investors, inform journalists, improve customer service, raise the quality of recruits and much more.',
            url: 'what-we-do', body: '
                <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">Services to improve your online effectiveness</h3>
                <p>Bowen Craggs &amp; Co delivers unique web effectiveness research and consultancy to help you improve the effectiveness of your online channels &ndash; websites, social media and relevant developments such as mobile and apps.</p>
                <p>We provide website benchmarking and analysis, market research, online strategy, measurement and best practice. We do not build websites or other platforms (this means you can rely on the independence of our advice). Deliverables are typically clear documents and management presentations that combine deep analysis with actionable recommendations.</p>
                <p>We combine advice with the transfer of knowledge to you &ndash; so that you can benefit from online communications that are</p>
                <ul>
                    <li>aligned with your company&rsquo;s overall business vision</li>
                    <li>best in class</li>
                    <li>meet the needs of your customers and other stakeholders.</li>
                </ul>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: ' meta_keyword',
            hide_on_nav: false, position: 2, created_at: Time.now)
        Web::Page.create(id: 4, name: 'FT Bowen Craggs Index', page_title: 'FT Bowen Craggs Index', 
            page_intro: 'The Index of corporate online effectiveness is a once-a-year snapshot of how well the world’s largest companies by market capitalisation use their websites, mobile and social channels, and apps to support their business objectives.',
            url: 'ft-bowen-craggs-index', body: '
                <header>
                    <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">A ranking for performance improvement</h3>
                </header>
                <p>Now in its seventh year the FT Bowen Craggs Index draws on detailed company reports and best practice that are painstakingly researched and compiled throughout the year to form a unique &#39;living&#39; database unparalleled as a tool for continuous improvement.</p>
                <p>The Index is a ranking &ndash; in fact many rankings &ndash; but the real aim is not to stimulate praise, blame or panic among the featured companies or the wider constituency of large organisations with online estates. Its purpose is to show what should be done (and what should not be done) to make a website and a company&rsquo;s other online communication channels as effective as possible.</p>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: ' meta_keyword',
            hide_on_nav: false, position: 3, created_at: Time.now)
        Web::Page.create(id: 5, name: 'Our thinking', page_title: 'Our thinking', 
            page_intro: 'Insightful commentary, practical analysis and stimulating observation.',
            url: 'our-thinking', body: '
                <header>
                    <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">Introduction</h3>
                </header>
                <p>From the macro view to the micro, from the executive helicopter to the web manager&rsquo;s desktop Our thinking spans the online corporate communications universe to provide stimulating comment, analysis and practical insights from our team of experienced consultants and writers,</p>
                <p>Continuously added to, Our thinking encompasses the collected wisdom, and occasional wit, built up by Bowen Craggs over the course of analysing and observing websites &ndash;&nbsp;and more recently their satellite online channels as well &ndash; over more than ten years.</p>
                <p>Here you&rsquo;ll find what are the five &lsquo;cardinal sins&rsquo; of online corporate communications&nbsp; that businesses should&nbsp; resolve to give up; why ExxonMobil appears to be asleep on the web; what&rsquo;s to learn from Google&rsquo;s newsfeed alternative to Twitter; and a gamut of issues from accessibility through reputation management and social media integration&nbsp; to zoomable displays.</p>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: ' meta_keyword',
            hide_on_nav: false, position: 4, created_at: Time.now)
        Web::Page.create(id: 6, name: 'Events & networking', page_title: 'Events & networking', 
            page_intro: 'We support online communications professionals in drawing on shared ideas and experiences through a variety of exclusive forums.',
            url: 'event-networking', body: '
                <header>
                    <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">Peer group exchanges</h3>
                </header>
                <p>Bowen Craggs &amp; Co facilitates regular Web Effectiveness Network meetings, conferences and a private LinkedIn group that give corporate online communications professionals invaluable opportunities to share experience and best practice directly with their peers.</p>
                <p>We also conduct ad hoc research to enable members to tap into the collective wisdom of the community.</p>
            ',
            meta_title: 'event-networking', meta_desc: ' description', meta_keyword: ' meta_keyword',
            hide_on_nav: false, position: 5, created_at: Time.now)
        
        # subpages

        Web::Page.create(id: 7, name: 'Our five strengths', page_title: 'Our five strengths', 
            page_intro: 'Bowen Craggs’ consulting and research services are unique to online corporate communications and rooted in an unparalleled combination of elements that enables us to deliver practical advice to clients worldwide.',
            url: 'our-five-strengths', 
            body: '
                <h3 style="font-family:garamond,georgia,serif">1. Global understanding</h3>
                <p><img alt="placeholder" src="http://placehold.it/100x100" style="margin-right:1em" /></p>
                <p>Caption for image</p>
                <p>We think globally and act globally. We understand cultural and other issues that affect the corporate communications needs of organisations in different parts of the world. Our working language is English, but we have associates who are fluent in a range of languages.</p>
                <h3 style="font-family:garamond,georgia,serif">2. Independence</h3>
                <p>We do not build websites, manage campaigns, develop content, or sell software. Our only interest is in providing impartial advice.</p>
                <h3 style="font-family:garamond,georgia,serif">3. Expertise</h3>
                <p>We have been analysing commercial and organisational websites since the mid-1990s. Our analysts are experts in both business and the web &ndash; we do not use junior staff.</p>
                <p><img alt="placeholder" src="http://placehold.it/210x150" style="margin-right:1em" />&nbsp;<img alt="placeholder" src="http://placehold.it/210x150" style="margin-right:1em" />&nbsp;<img alt="placeholder" src="http://placehold.it/210x150" style="margin-right:1em" /></p>
                <p>Caption for image</p>
                <h3 style="font-family:garamond,georgia,serif">4. Credibility</h3>
                <p>Our client list and collaboration with the Financial Times speak for themselves. Please ask if you would like to talk to a past or existing client.</p>
                <p><img alt="placeholder" src="http://placehold.it/660x150" style="margin-right:1em" /></p>
                <p>Caption for image</p>
                <h3 style="font-family:garamond,georgia,serif">5. Clarity</h3>
                <p>Our founders worked as business journalists and understand that clarity of expression is critical. We avoid jargon and produce reports or presentations in clear language. They can be translated if required.</p>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 2,
            hide_on_nav: false, position: 1, created_at: Time.now)
        Web::Page.create(id: 8, name: 'Q & A', page_title: 'Help me choose', 
            page_intro: 'Discover more about who we are, what we deliver and how we do it.',
            url: 'q-a', body: 'A question-and-answer guide to the essentials The opportunity we offer to improve the effectiveness of your online communications strategies is built on a proven approach, robust methodology and sound return on investment. Naturally, that raises some questions…',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 2,
            hide_on_nav: false, position: 2, created_at: Time.now)
        Web::Page.create(id: 9, name: 'Our team', page_title: 'Our team', 
            page_intro: 'Bowen Craggs & Co assembles an unrivalled perspective on the commercial and organisational web.',
            url: 'our-team', body: 'The Bowen Craggs & Co team brings together a unique range of experience and involvement with online corporate communications stretching from the early days of the medium. The team is led by David Bowen, who founded Net Profit in 1996 and has been a long-standing columnist on the business web for the Financial Times and ft.com. Since 2007 the team has been responsible for the annual FT Bowen Craggs Index of corporate online effectiveness, which is established as the most credible overview of corporate online channels.',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 2,
            hide_on_nav: false, position: 3, created_at: Time.now)


        Web::Page.create(id: 10, name: 'Help me choose', page_title: 'Help me choose', 
            page_intro: 'We help organisations turn their online communications into a set of powerful tools that polish their reputation, increase sales, satisfy investors, inform journalists, improve customer service, raise the quality of recruits and much more.',
            url: 'help-me-choose', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 3,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 11, name: 'Client case studies', 
            page_title: 'Client case studies', page_intro: 'Many of the world’s largest companies use our advice to shape their online communications strategies. Learn from the featured case studies  how we work with clients from around the world to provide the knowledge and analysis that helps them continuously improve their online channels and strategies to do the jobs they should be doing as well as they could be.',
            url: 'client-case-studies', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 3,
            position: 2, created_at: Time.now)
        Web::Page.create(id: 12, name: 'Web Effectiveness database', page_title: 'Web Effectiveness database', 
            page_intro: 'Subscribers to the database get unique access to detailed reports about top companies’ online presence and a set of interactive tools that allows them to interrogate the underlying data.',
            url: 'Web-Effectiveness-database', body: '
            <header>
                <h3 style="background-color:#f0f1f1; font-family:garamond; font-size:24px; padding:6px">Exclusive access to detailed examinations and best practice</h3>
            </header>
            <p>Membership of the our Web Effectiveness database is an exclusive pass to scores and commentary for the more than 80 global companies in the FT Bowen&nbsp;Craggs&nbsp;Index plus highlighted best practice from the top performers.</p>
            <p>Your company need not feature in the Index for you to use the service: we will review your website and add it to the database when you subscribe. With a premium-level Confidential subscription you will also receive a detailed analysis supported by a set of practical recommendations illustrated with tailored best practice examples from around the web.</p>
            <p>As well as providing guidelines for improvement, our review of corporate online effectiveness at this level establishes a &lsquo;performance gap&rsquo; metric-by-metric of how your enterprise performs against a selection of peer companies from a range of sectors and geographies. Social media indicators are woven into our methodology so that companies are credited for their use of social media as part of their communications effort. As such, data is excellent for internal reporting and senior management presentations.&nbsp;</p>
            ',
            meta_title: '', meta_desc: ' description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 3,
            position: 3, created_at: Time.now)
        Web::Page.create(id: 13, name: 'Strategic consulting', page_title: 'Strategic consulting', 
            page_intro: 'We are called in by clients to help formulate strategy at the four pivotal points in the lifecycle of a corporate web presence.',
            url: 'strategic-consulting', body: '
                <header>
                    <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">Acting as advisor at every stage</h3>
                </header>
                <p>We have been brought in at four stages of a web presence&rsquo;s lifecycle: before a major relaunch; during redevelopment; after relaunch; and at any time to tackle specific issues or measure effectiveness against peers.</p>
                <p>Before relaunch to</p>
                <ul>
                    <li>Establish whether the site should be upgraded or completely redeveloped.</li>
                    <li>Develop an online strategy, leading up the point of build. This includes needs analysis, best practice identification, benchmarking and strategy creation.</li>
                    <li>Benchmark a site, both to provide a marker against which to measure improvement and to identify relevant best practice within and outside the sector.</li>
                    <li>Identify best practice to find out how clients could better exploit the web. This is particularly relevant for companies where it is fast becoming a key part of strategy.</li>
                    <li>Provide &lsquo;blue sky&rsquo; thinking to ensure the client is taking full advantage of future as well as current developments in the online world.</li>
                    <li>Sell the need for change &lsquo;upwards&rsquo; in an organisation, normally through presentations and drawing on other projects such as benchmarks for supporting evidence.</li>
                </ul>
                <p>During redevelopment to</p>
                <ul>
                    <li>Monitor progress, by, for example, examining the site once it has reached &lsquo;wireframe&rsquo; stage.</li>
                    <li>Run regular &lsquo;light&rsquo; benchmarks to monitor redevelopment progress and to provide independently judged key performance indicators for the client.</li>
                    <li>Build balanced scorecard frameworks that will measure site effectiveness to help ensure goals are reached.</li>
                </ul>

                <p>We facilitate networking through regular meetings for corporate website professionals and as the hub for a private LinkedIn group.</p>

                <p>After relaunch to</p>

                <ul>
                    <li>Run a benchmark to ensure the site matches up to its competitors and best practice and that it works as smoothly as it should. This may be standalone or as a follow-up to a pre-relaunch benchmark.</li>
                    <li>Manage balanced scorecards; providing visitor feedback, insight and recommendations.</li>
                </ul>

                <p>At any time to</p>

                <ul>
                    <li>Tackle specific issues. For example, to find best practice in a particular area, to benchmark a particular section or to examine how well a particular issue is being tackled.</li>
                    <li>Carry out a &lsquo;health check&rsquo; on a site, usually by using a benchmark.</li>
                    <li>Advise on web estate governance.</li>
                    <li>Facilitate contact between people with similar needs. We hold well-attended meetings for people responsible for corporate and other large websites, and act as a hub for networking via a private LinkedIn group. &lsquo;Network meetings are also held quarterly in Europe.</li>
                </ul>

            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 3,
            position: 4, created_at: Time.now)
        Web::Page.create(id: 14, name: 'Audience research and measurement', page_title: 'Audience research and measurement', 
            page_intro: 'Do you know who visits your website, what expectations they arrive with or what they do there? AND where that puts you against your peers?',
            url: 'audience-research-and-measurement', body: '
            <header>
                <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">The power of knowing what to ask</h3>
            </header>
            <p>It&rsquo;s amazing how much you can learn from a few well chosen questions. We have designed a simple survey for corporate websites to really uncover who comes to your&nbsp; site, what motivates them and what their goals are. In addition we allow another question to be answered: &lsquo;how do our results compare with those of our peers?&rsquo;.</p>
            <p>We supply a basic question set, working with you to agree the questions and response options, formatting and branding to suit your organisation. The degree of customisation is restricted to ensure that the data gathered is appropriate for benchmarking against anonymous and aggregated results from other participants.</p>
            <p>Supplementary questions can be added, however; more complex branching can be included; and multiple versions offered (if you wish to run different surveys on different websites or parts of a website), at extra cost.</p>
            <p>A constant source of data supports trending, one of the most important benefits of this service.</p>
            <p>The survey is simple to implement using our easy-installer widget, or you can deploy it yourself with control over features such as the &lsquo;presentation rate&rsquo;. The survey platform is also capable of supporting many languages and character sets.</p>
            <p>The survey is intended to run continuously so as to provide a constant source of data &ndash; trending being one of the most important benefits of this service.</p>
            <p>Data is gathered anonymously, though direct feedback can also be invited and correlated. The survey is hosted on your behalf by Bowen Craggs &amp; Co as an independent research agency and we collect all the survey response data, securely, using Clicktools &ndash; an industry-leading survey platform. If you use Google Analytics, additional data can be gathered without asking the visitor more questions.</p>
            <p>The main delivery method is a proprietary web-based dashboard with a log-in facility to see your results. By presenting visitor survey data in a dashboard we can help you ensure your website meets the needs of your visitors, find trouble spots, prioritise fixes and measure improvement.&nbsp;</p>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 3,
            hide_on_nav: false, position: 5, created_at: Time.now)

        Web::Page.create(id: 15, name: 'Trends', page_title: 'Trends 2013', 
            page_intro: 'The biggest corporations in the world are taking a new interest in online communications thanks to the latest commercial \'must have\': a mobile web strategy.',
            url: 'trends', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 4,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 16, name: 'Interactive Result Table', page_title: 'Interactive results table', page_intro: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ',
            url: 'interactive-results-table', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Interactive Result Table', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 4,
            hide_on_nav: false, position: 2, created_at: Time.now)

        Web::Page.create(id: 17, name: 'FAQ & methodology', page_title: 'FAQ & methodology', 
            page_intro: 'The FT Bowen Craggs Index is produced using a unique report-based methodology developed to assess corporate online effectiveness and covering web estates along with their associated social media channels, mobile sites and apps.',
            url: 'FAQ-methodology', body: '
            <header>
                <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">A uniquely detailed peer review</h3>
            </header>
            <p>The Index draws its constituency from the world&rsquo;s largest quoted companies as defined by the Financial Times Global 500. It has expanded again in its seventh year to cover the online estates and associated communication channels of 84 of the world&rsquo;s biggest companies.
            It is the most detailed mass study of large web estates produced and has three aims</p>
            <ul>
                <li>Help organisations to know where to look for ideas</li>
                <li>Pick out trends in online communications</li>
                <li>Allow companies in the Index to see how they are performing against their peers</li>
            </ul>
            <p>Two features make this Index unlike other rankings.&nbsp;<br />
            <br />
            First, it takes an overall view. It looks at the different (and often complex) jobs online channels are asked to do, and assesses how well it does them. Although there are considerable differences in emphasis, these tasks are much the same for all companies.&nbsp;<br />
            Second, the methodology is based on the judgement of experts, rather than a &lsquo;check box&rsquo; approach: websites and their related channels are too complex to be measured in a simple way.</p>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 4,
            position: 3, created_at: Time.now)
        Web::Page.create(id: 18, name: 'Downloads', page_title: 'Downloads', 
            page_intro: 'The FT Bowen Craggs Index is produced using a unique report-based methodology developed to assess corporate online effectiveness and covering web estates along with their associated social media channels, mobile sites and apps.',
            url: 'downloads', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Downloads', meta_desc: 'downloadsdescription', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 4,
            position: 4, created_at: Time.now)


        Web::Page.create(id: 19, name: 'Commentaries', page_title: 'Commentaries', 
            page_intro: 'Insights into the corporate web from our veteran Financial Times contributor David Bowen and senior analyst Scott Payton.',
            url: 'commentaries', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Commentaries', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 5,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 20, name: 'BC Tips', page_title: 'BC Tips', 
            page_intro: 'Best (and worst) practice ‘snapshots’ from around the web, with our unique evaluation of their significance and value to online professionals',
            url: 'bc-tips', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'BC Tips', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 5,
            position: 2, created_at: Time.now)
        Web::Page.create(id: 21, name: 'Presentations and reports', page_title: 'Presentations and reports', 
            page_intro: 'Topic-related content from the Web Effectiveness conference series, ad hoc research for the Web Effectiveness Network and more.',
            url: 'presentations-and-reports', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Presentations and reports', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 5,
            position: 3, created_at: Time.now)
        Web::Page.create(id: 22, name: 'FT-Bowen-Craggs-Index-analysis', page_title: 'FT-Bowen-Craggs-Index-analysis', 
            page_intro: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ',
            url: 'bc-tips', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'BC Tips', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 5,
            position: 5, created_at: Time.now)

        Web::Page.create(id: 23, name: 'Network group', page_title: 'Network group', 
            page_intro: 'Our Web Effectiveness Network group helps its more than 500 members in private, public and non-governmental sectors across Europe, North America and Asia stay in touch with key operational and strategic issues – and how they are being addressed by their peers around the world.',
            url: 'network-group', 
            body: '
                <h3 style="background-color:#f0f1f1; font-family:garamond; font-size:24px; padding:6px">Interact with fellow professionals</h3>
                <p>Bowen Craggs &amp; Co has coordinated an exclusive network for online corporate&nbsp; communications professionals since 2003. Although most group members work in Fortune 500 corporations, we welcome senior managers from public sector and non-governmental organisations with responsibility for large web presences.</p>
                <p>The focal point of the group&rsquo;s activity is a series of half-day meetings that run&nbsp; throughout the year hosted by members. While the meetings are based round two presentations on topical issues, they invariably develop into lively discussions that reveal practical insights into current challenges and future opportunities for online communications.</p>
                <p>In coming together through the network to explore ideas and&nbsp; issues, online communications professionals from very different organisations discover they are facing the same challenges and, crucially, can share ways to tackle them.</p>
                <h3 class="underline" style="font-family:garamond">Membership benefits</h3>
                <p><strong>Member-hosted member-only events</strong></p>
                <p>The opportunity to network exclusively with fellow professionals in an informal environment is as big a draw as the topics on the agenda.</p>
                <p>Meetings are always hosted by a network member and are held at locations around the world. Group members can attend as many meetings as they wish or keep up to speed through access to all speaker presentations and the anonymised minutes.</p>
                <p><strong>Unique market research</strong></p>
                <p>Bowen Craggs facilitates requests from group members for cost-free market research among the network community. Need to know how others deal with specific issues? Ask the group and get real answers fast.</p>
                <p><strong>Selective access to the Bowen Craggs best practice database</strong></p>
                <p>Bowen Craggs facilitates requests from group members for cost-free market research among the network</p>
                <p><strong>Secure online member networking tool</strong></p>
                <p>A private group on LinkedIn, the professional networking website, runs in parallel with the network. Access is strictly limited to members of the Web Effectiveness Network (no agencies or consultants are allowed).</p>
                <p><strong>Reduced rate annual conference pass</strong></p>
                <p>The annual Web Effectiveness Conference is held over two days in June. Network members are offered delegate passes at 20 per cent discount.</p>
                <h3 class="underline" style="font-family:garamond">Membership criteria</h3>
                <p>There is no cost to join but membership is subject to acceptance. Applicants must be senior industry professionals working for large corporate or public sector/ non-governmental organisations. Members agree to their being made known to fellow and prospective members.</p>
',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 6,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 24, name: 'Conferences', page_title: 'Conferences', 
            page_intro: 'Bowen Craggs’ annual Web Effectiveness Conference has established itself as a go-to fixture in the corporate communications calendar since the inaugural event in 2008 and is now complemented by regional events.',
            url: 'conferences', 
            body: '
                <h3 style="background-color:#f0f1f1; font-family:garamond; font-size:24px; padding:6px">The conference for online corporate communications</h3>
                <p>The Web Effectiveness Conference brings a business perspective to the web and was born as a natural extension of our popular Web Effectiveness Network (WEN) meetings.</p>
                <p> The conference enables those attending to make and maintain contact with high-level peers who are responsible for big complex web estates. Operating across private, public and non-governmental sectors, the conference briefs delegates on key operational and strategic issues&sbquo; and how they are being addressed by fellow professionals around the world. </p>
                <p>As with all Bowen Craggs &amp; Co events the conferences are sponsor- and vendor-free.&nbsp; While that is reflected in the cost of attendance, it ensures a sales-pitch-free environment in which delegates get to&nbsp;share and learn in open discussions and expand their &#39;A&#39; network in a social, informal, collegiate atmosphere.</p>
                <h3 class="underline" style="font-family:garamond">Why attend?</h3>
                <p><strong>Exclusive tailored agenda</strong></p>
                <p>The only event dedicated to online communicators in global organisations: we focus on the external corporate website (or central websites of large, complex organisations), as well as on the &#39;extended web&#39; (blogs, social networking sites, off-platform channels such as YouTube, etc), mobile and apps.</p>
                <p><strong>Joined-up learning</strong></p>
                <p>Find out how to ensure your online presence generates all the benefits it can through insights into the organisational and governance issues behind an effective web presence.</p>
                <p><strong>Unique &#39;open&#39; environment</strong></p>
                <p>Informed debate and networking with your peers at roundtable discussions and real-life presentations offer a proper opportunity to question and challenge people who have the same job.</p>
                <p><strong>No sponsors or exhibitors means you can relax and talk freely.</strong></p>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            hide_on_nav: false, parent_id: 6,
            position: 2, created_at: Time.now)
        Web::Page.create(id: 25, name: 'LinkedIn group', page_title: 'LinkedIn group', 
            page_intro: 'Bowen Craggs & Co facilitates a private group on LinkedIn, the professional networking website, to complement its Web Effectiveness Network. Access is strictly limited to network members. No agencies or consultants are allowed.',
            url: 'linkedin-group', body: '
                <header>
                 <h3 style="background-color:#f0f1f1;font-family:garamond;font-size:24px;padding:6px;">Secure online member networking tool</h3>
                </header>
                <p>To accompany the network there is a private group on LinkedIn, the professional networking website. Access is strictly limited to members of the web effectiveness network, i.e. communications professionals at international organisations (no agencies or consultants are allowed).</p>
                <p>Please apply to join the LinkedIn group if you want to make and maintain key business relationships with other corporate website professionals.</p>
            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'us meta_keyword',
            hide_on_nav: false, parent_id: 6,
            position: 3, created_at: Time.now)

        Web::Page.create(id: 26, name: 'Contact us', page_title: 'Contact us', 
            page_intro: '<p>Bowen Craggs &amp; Co can be contacted in the following ways.</p>',
            url: 'contact-us', body: '
                <p>For all commercial enquiries:</p>
                <p>Dan Drury</p>
                <p>Executive Commercial Director<br />
                <strong>e-mail:</strong>&nbsp;<a href="mailto:ddrury@bowencraggs.com">ddrury@bowencraggs.com</a>&nbsp;<br />
                <strong>mobile:</strong>&nbsp;+44 7786 707434&nbsp;<br />
                <strong>office:</strong>&nbsp;+44 2071 937554</p>
                <hr />
                <p>For PR and media enquiries:</p>
                <p>David Bowen</p>
                <p>Founder &amp; Senior Consultant&nbsp;<br />
                <strong>e-mail:</strong>&nbsp;<a href="mailto:dbowen@bowencraggs.com">dbowen@bowencraggs.com</a></p>
                <p>Scott Payton</p>
                <p>Senior Consultant&nbsp;<br />
                <strong>e-mail:</strong>&nbsp;<a href="mailto:spayton@bowencraggs.com">spayton@bowencraggs.com</a></p>
                <hr />
                <p>For Administration and Finance:</p>
                <p>Keith Craggs</p>
                <p>Director &amp; Senior Consultant</p>
                <p><strong>e-mail:</strong>&nbsp;<a href="mailto:kcraggs@bowencraggs.com">kcraggs@bowencraggs.com</a></p>
                <hr />
                <p>Postal Address:</p>
                <p><strong>Bowen Craggs &amp; Co Limited</strong>&nbsp;<br />
                PO Box 20895&nbsp;<br />
                London SE22 9YY&nbsp;<br />
                United Kingdom</p>
                <hr />
                <p>Company information:</p>
                <p>Registered in England &amp; Wales Company Number: 04467508&nbsp;<br />
                VAT number: GB 798 6174 61&nbsp;<br />
                Registered address: 18 Melbourne Grove, London SE22 8RA</p>

            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'us meta_keyword', created_at: Time.now)

        Web::Page.create(id: 28, name: 'Privacy & Cookies', page_title: 'Privacy & Cookies', 
            page_intro: 'Bowen Craggs & Co facilitates a private group on LinkedIn, the professional networking website, to complement its Web Effectiveness Network. Access is strictly limited to network members. No agencies or consultants are allowed.',
            url: 'privacy-cookies', body: '
                <h3 style="font-family:garamond,georgia">Privacy &amp; cookies</h3>
                <p>Full details are given below of how Bowen Craggs &amp; Co uses visitor&rsquo;s personal information gained from this site and our surveys on other websites. If you have any questions concerning your privacy with Bowen Craggs &amp; Co, please send an e-mail to&nbsp;<a href="mailto:ddrury@bowencraggs.com">Dan Drury</a></p>
                <h3 style="font-family:garamond,georgia">Personally identifiable information</h3>
                <p>Visitor privacy is very important to us, as is our reputation in the marketplace. Bowen&nbsp;Craggs&nbsp;&amp; Co will not do anything with a visitor&rsquo;s personal details that the visitor has not given express permission for. It is our policy to respect your privacy. This includes:</p>
                <h3 style="font-family:garamond,georgia"><strong>Choice and consent</strong></h3>

                <p>To respect the purpose for which our site visitors give us information we give them choice and consent over how their personal information is used. We will remove your personal information immediately upon request.</p>

                <h3 style="font-family:garamond,georgia"><strong>Third-party use</strong></h3>

                <p>We do not sell, rent or loan our e-mail lists to third parties.</p>

                <h3 style="font-family:garamond,georgia"><strong>Opt-ins</strong></h3>

                <p>We send out information only to those who request it and immediately unsubscribe those who ask us to do so.</p>

                <h3 style="font-family:garamond,georgia"><strong>Recommendations</strong></h3>

                <p>Information about Bowen Craggs &amp; Co will be sent on behalf of users who have recommended it to a friend or colleague. People who have been recommended will not automatically be added to our e-mail lists.</p>

                <h3 style="font-family:garamond,georgia"><strong>Cookies</strong></h3>

                <p>We may store some information (commonly known as a &lsquo;cookie&rsquo;) on your computer when you look at our site. We are able to read these cookies for information purposes should you revisit our website. The type of information we collect as a result of a cookie being accepted by you is specific to your PC and includes the IP address, the date and time of the visit, what parts of our website were looked at and whether the web pages requested were delivered successfully. This information is anonymous; it represents and is associated with a computer rather than a person. We use the cookie information to improve our knowledge of how our website Is used and to enable us to ascertain whether the website is functioning correctly.</p>

                <p>We use cookies on our site. By browsing the site you are agreeing to this, but you can&nbsp;<a href="http://bowencraggsweb.mdbconsulting.co.uk/privacy-cookies/#">change your settings at any time</a>.</p>

            ',
            meta_title: '', meta_desc: 'description', meta_keyword: 'us meta_keyword', created_at: Time.now)





        # Widgets
        Web::Widget.delete_all
        Web::Widget.create(id: 1, name: 'Print', theme: 'white', created_at: Time.now, 
            body: '<p><a href="#">print</a></p>')
        Web::Widget.create(id: 1, name: 'Subscribe', theme: 'Blue', created_at: Time.now,
            body: '<header>
                    <h3 style="font-family:garamond"><a href="http://localhost:3000/subscribe/" target="_self">Get our regular commentary on how to be more effective online</a></h3>
                    </header>

                    <p><a class="btn" href="http://localhost:3000/subscribe">Subscribe</a></p>
            ')
        Web::Widget.create(id: 2, name: 'Download brochure', theme: 'Blue', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond"><a href="/downloads/bc_ftindex_2013_booklet.pdf" target="_self">Get our regular commentary on how to be more effective online</a></h3>
                </header>
                <p><a class="btn" href="/downloads/bc_ftindex_2013_booklet.pdf">Download brochure</a></p>
            ')
        Web::Widget.create(id: 3, name: 'Download datasheet', theme: 'DarkGray', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond"><a href="/downloads/bc_ftindex_2013_metrics.xls" target="_self">Handy summary data sheet to accompany the FT Index 2013</a></h3>
                </header>
                <p><a class="btn" href="/downloads/bc_ftindex_2013_metrics.xls">Download datasheet</a></p>
            ')
        Web::Widget.create(id: 4, name: 'Share', theme: 'LightGray', created_at: Time.now,
            body: '')
        Web::Widget.create(id: 5, name: 'Follow us', theme: 'LightGray', created_at: Time.now,
            body: '')
        Web::Widget.create(id: 6, name: 'Siemens case study', theme: 'LightGray', created_at: Time.now,
            body: '')
        Web::Widget.create(id: 7, name: 'P&G case study', theme: 'LightGray', created_at: Time.now,
            body: '')
        Web::Widget.create(id: 8, name: 'FT Index database', theme: 'LightGray', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond"><a href="/what-we-do/web-effectiveness-database/" target="_self">Get exclusive access to detailed reviews and best practice</a></h3>
                </header>
                <p><a class="btn" href="http://localhost:3000/subscribe">FT index database</a></p>
            ')
        Web::Widget.create(id: 9, name: 'Build your own', theme: 'LightGray', created_at: Time.now,
            body: '')
        Web::Widget.create(id: 10, name: 'Join the group', theme: 'DarkGray', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond"><a href="#" target="_self">Share your challenges with peers at quarterly round table meetings</a></h3>
                </header>
                <p><a class="btn" href="http://localhost:3000/subscribe">Join the group</a></p>
            ')
        Web::Widget.create(id: 11, name: 'Visit Conference', theme: 'DarkGray', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond"><a href="#" target="_self">Interested in picking up more ideas and thought provoking debate?</a></h3>
                </header>
                <p><a class="btn" href="http://localhost:3000/subscribe">Visit Conference site</a></p>
            ')
        Web::Widget.create(id: 12, name: 'Join LinkedIn', theme: 'DarkGray', created_at: Time.now,
            body: '')
        Web::Widget.create(id: 13, name: 'Join network group', theme: 'Blue', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond">Interested in joining our Network group?</h3>
                </header>
                <p><a class="btn" href="http://localhost:3000/subscribe">Download datasheet</a></p>
            ')
        Web::Widget.create(id: 14, name: 'Visiter research', theme: 'LightGray', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond"><a href="/what-we-do/audience-research-measurement/" target="_self">Discover the power of knowing your audience</a></h3>
                </header>
                <p><a class="btn" href="/what-we-do/audience-research-measurement/">Visitor research</a></p>
            ')

        Web::Widget.create(id: 15, name: 'Strategic consulting', theme: 'LightGray', created_at: Time.now,
            body: '
                <header>
                    <h3 style="font-family:garamond"><a href="/what-we-do/strategic-consulting/" target="_self">Turn to us for advice</a></h3>
                </header>

                <p><a class="btn" href="/what-we-do/strategic-consulting/">Strategic consulting</a></p>
            ')

        

  end
end