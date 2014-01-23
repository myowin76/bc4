  #       # Roles
  #       Admin::Role.delete_all
  #       Admin::Role.create(id: 1, name: 'Admin', created_at: Time.now)
  #       Admin::Role.create(id: 2, name: 'Editor', created_at: Time.now)
  #       Admin::Role.create(id: 3, name: 'Company Super User', created_at: Time.now)
  #       Admin::Role.create(id: 4, name: 'Company User', created_at: Time.now)

        # Reports
        Web::Page.delete_all
        Web::Page.create(id: 1, name: 'Home', page_title: 'Home', 
            page_intro: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ',
            url: '/', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Bowen Craggs', meta_desc: 'Bowen Craggs description', meta_keyword: 'Bowen Craggs meta_keyword',
            position: 0, created_at: Time.now)

        Web::Page.create(id: 1, name: 'About us', page_title: 'About us', 
            page_intro: 'Bowen Craggs & Co is a unique research and consultancy group. Our sole focus is online corporate communications - websites, social media and apps.',
            url: 'about-us', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'about us', meta_desc: 'about us description', meta_keyword: ' meta_keyword',
            position: 1, created_at: Time.now)
        Web::Page.create(id: 1, name: 'What we do', page_title: 'What we do', 
            page_intro: 'We help organisations turn their online communications into a set of powerful tools that polish their reputation, increase sales, satisfy investors, inform journalists, improve customer service, raise the quality of recruits and much more.',
            url: 'what-we-do', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: ' meta_keyword',
            position: 2, created_at: Time.now)
        Web::Page.create(id: 1, name: 'FT Bowen Craggs Index', page_title: 'FT Bowen Craggs Index', 
            page_intro: 'The Index of corporate online effectiveness is a once-a-year snapshot of how well the world’s largest companies by market capitalisation use their websites, mobile and social channels, and apps to support their business objectives.',
            url: 'ft-bowen-craggs-index', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: ' meta_keyword',
            position: 3, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Our thinking', page_title: 'Our thinking', 
            page_intro: 'Insightful commentary, practical analysis and stimulating observation.',
            url: 'our-thinking', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: ' meta_keyword',
            position: 4, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Events & networking', page_title: 'Events & networking', 
            page_intro: 'We support online communications professionals in drawing on shared ideas and experiences through a variety of exclusive forums.',
            url: 'event-networking', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'event-networking', meta_desc: ' description', meta_keyword: ' meta_keyword',
            position: 5, created_at: Time.now)
        
        # subpages

        Web::Page.create(id: 1, name: 'Our five strengths', page_title: 'Our five strengths', 
            page_intro: 'Bowen Craggs’ consulting and research services are unique to online corporate communications and rooted in an unparalleled combination of elements that enables us to deliver practical advice to clients worldwide.',
            url: 'our-five-strengths', 
            body: '1. Global understanding
                We think globally and act globally. We understand cultural and other issues that affect the corporate communications needs of organisations in different parts of the world. Our working language is English, but we have associates who are fluent in a range of languages.

                2. Independence
                We do not build websites, manage campaigns, develop content, or sell software. Our only interest is in providing impartial advice.

                3. Expertise
                We have been analysing commercial and organisational websites since the mid-1990s. Our analysts are experts in both business and the web – we do not use junior staff.

                4. Credibility
                Our client list and collaboration with the Financial Times speak for themselves. Please ask if you would like to talk to a past or existing client.

                5. Clarity
                Our founders worked as business journalists and understand that clarity of expression is critical. We avoid jargon and produce reports or presentations in clear language. They can be translated if required.',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 2,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Q & A', page_title: 'Help me choose', 
            page_intro: 'Discover more about who we are, what we deliver and how we do it.',
            url: 'q-a', body: 'A question-and-answer guide to the essentials The opportunity we offer to improve the effectiveness of your online communications strategies is built on a proven approach, robust methodology and sound return on investment. Naturally, that raises some questions…',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 2,
            position: 2, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Our team', page_title: 'Our team', 
            page_intro: 'Bowen Craggs & Co assembles an unrivalled perspective on the commercial and organisational web.',
            url: 'our-team', body: 'The Bowen Craggs & Co team brings together a unique range of experience and involvement with online corporate communications stretching from the early days of the medium. The team is led by David Bowen, who founded Net Profit in 1996 and has been a long-standing columnist on the business web for the Financial Times and ft.com. Since 2007 the team has been responsible for the annual FT Bowen Craggs Index of corporate online effectiveness, which is established as the most credible overview of corporate online channels.',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 2,
            position: 3, created_at: Time.now)


        Web::Page.create(id: 1, name: 'Help me choose', page_title: 'Help me choose', 
            page_intro: 'We help organisations turn their online communications into a set of powerful tools that polish their reputation, increase sales, satisfy investors, inform journalists, improve customer service, raise the quality of recruits and much more.',
            url: 'help-me-choose', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 3,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Client case studies', 
            page_title: 'Client case studies', page_intro: 'Many of the world’s largest companies use our advice to shape their online communications strategies. Learn from the featured case studies  how we work with clients from around the world to provide the knowledge and analysis that helps them continuously improve their online channels and strategies to do the jobs they should be doing as well as they could be.',
            url: 'client-case-studies', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 3,
            position: 2, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Web Effectiveness database', page_title: 'Web Effectiveness database', 
            page_intro: 'Subscribers to the database get unique access to detailed reports about top companies’ online presence and a set of interactive tools that allows them to interrogate the underlying data.',
            url: 'Web-Effectiveness-database', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: ' description', meta_keyword: 'meta_keyword',
            parent_id: 2,
            position: 3, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Strategic consulting', page_title: 'Strategic consulting', 
            page_intro: 'We are called in by clients to help formulate strategy at the four pivotal points in the lifecycle of a corporate web presence.',
            url: 'strategic-consulting', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 3,
            position: 4, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Audience research and measurement', page_title: 'Audience research and measurement', 
            page_intro: 'Do you know who visits your website, what expectations they arrive with or what they do there? AND where that puts you against your peers?',
            url: 'audience-research-and-measurement', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 3,
            position: 5, created_at: Time.now)

        Web::Page.create(id: 1, name: 'Trends', page_title: 'Trends 2013', 
            page_intro: 'The biggest corporations in the world are taking a new interest in online communications thanks to the latest commercial \'must have\': a mobile web strategy.',
            url: 'trends', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 4,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Interactive Result Table', page_title: 'Interactive results table', page_intro: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ',
            url: 'interactive-results-table', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Interactive Result Table', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 4,
            position: 2, created_at: Time.now)

        Web::Page.create(id: 1, name: 'FAQ & methodology', page_title: 'FAQ & methodology', 
            page_intro: 'The FT Bowen Craggs Index is produced using a unique report-based methodology developed to assess corporate online effectiveness and covering web estates along with their associated social media channels, mobile sites and apps.',
            url: 'FAQ-methodology', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 4,
            position: 3, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Downloads', page_title: 'Downloads', 
            page_intro: 'The FT Bowen Craggs Index is produced using a unique report-based methodology developed to assess corporate online effectiveness and covering web estates along with their associated social media channels, mobile sites and apps.',
            url: 'downloads', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Downloads', meta_desc: 'downloadsdescription', meta_keyword: 'meta_keyword',
            parent_id: 4,
            position: 4, created_at: Time.now)


        Web::Page.create(id: 1, name: 'Commentaries', page_title: 'Commentaries', 
            page_intro: 'Insights into the corporate web from our veteran Financial Times contributor David Bowen and senior analyst Scott Payton.',
            url: 'commentaries', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Commentaries', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 5,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 1, name: 'BC Tips', page_title: 'BC Tips', 
            page_intro: 'Best (and worst) practice ‘snapshots’ from around the web, with our unique evaluation of their significance and value to online professionals',
            url: 'bc-tips', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'BC Tips', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 5,
            position: 2, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Presentations and reports', page_title: 'Presentations and reports', 
            page_intro: 'Topic-related content from the Web Effectiveness conference series, ad hoc research for the Web Effectiveness Network and more.',
            url: 'presentations-and-reports', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'Presentations and reports', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 5,
            position: 3, created_at: Time.now)
        Web::Page.create(id: 1, name: 'FT-Bowen-Craggs-Index-analysis', page_title: 'FT-Bowen-Craggs-Index-analysis', 
            page_intro: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ',
            url: 'bc-tips', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: 'BC Tips', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 5,
            position: 5, created_at: Time.now)

        Web::Page.create(id: 1, name: 'Network group', page_title: 'Network group', 
            page_intro: 'Our Web Effectiveness Network group helps its more than 500 members in private, public and non-governmental sectors across Europe, North America and Asia stay in touch with key operational and strategic issues – and how they are being addressed by their peers around the world.',
            url: 'network-group', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 6,
            position: 1, created_at: Time.now)
        Web::Page.create(id: 1, name: 'Conferences', page_title: 'Conferences', 
            page_intro: 'Bowen Craggs’ annual Web Effectiveness Conference has established itself as a go-to fixture in the corporate communications calendar since the inaugural event in 2008 and is now complemented by regional events.',
            url: 'conferences', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'meta_keyword',
            parent_id: 6,
            position: 2, created_at: Time.now)
        Web::Page.create(id: 1, name: 'LinkedIn group', page_title: 'LinkedIn group', 
            page_intro: 'Bowen Craggs & Co facilitates a private group on LinkedIn, the professional networking website, to complement its Web Effectiveness Network. Access is strictly limited to network members. No agencies or consultants are allowed.',
            url: 'linkedin-group', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            meta_title: '', meta_desc: 'description', meta_keyword: 'us meta_keyword',
            parent_id: 6,
            position: 3, created_at: Time.now)

        



        # # User
        # User.delete_all
        # User.create(id: 1, email: 'myowin76@hotmail.com', 
        #     encrypted_password: '$2a$10$jHlM6q.d9D/GwIDIQK4xQOK.iomzjoR9O1nMjT7IgH5M5VV21kakm',
        #     created_at: Time.now)
        # Sectors
        Admin::Sector.delete_all
        Admin::Sector.create(id: 1, name: 'Aerospace & defense', created_at: Time.now)
        Admin::Sector.create(id: 2, name: 'Agricultural', created_at: Time.now)
        Admin::Sector.create(id: 3, name: 'Alternative energy', created_at: Time.now)
        Admin::Sector.create(id: 4, name: 'Banks', created_at: Time.now)
        Admin::Sector.create(id: 5, name: 'Beverages', created_at: Time.now)
        Admin::Sector.create(id: 6, name: 'Chemical', created_at: Time.now)

        

        # Regions
        Admin::Region.delete_all
        Admin::Region.create(id: 1, name: 'Europe', created_at: Time.now)
        Admin::Region.create(id: 2, name: 'USA', created_at: Time.now)
        Admin::Region.create(id: 3, name: 'Rest of World', created_at: Time.now)
        
        # Countries
        Admin::Country.delete_all
        Admin::Country.create(id: 1, name: 'Anglo-Australian', region_id: 3, created_at: Time.now)
        Admin::Country.create(id: 2, name: 'Anglo-Dutch', region_id: 3, created_at: Time.now)
        Admin::Country.create(id: 3, name: 'Australia', region_id: 2, created_at: Time.now)
        Admin::Country.create(id: 4, name: 'Belgium', region_id: 1, created_at: Time.now)
        Admin::Country.create(id: 5, name: 'Brazil', region_id: 3, created_at: Time.now)
        Admin::Country.create(id: 6, name: 'Canada', region_id: 2, created_at: Time.now)
        Admin::Country.create(id: 7, name: 'China', region_id: 2, created_at: Time.now)
        Admin::Country.create(id: 8, name: 'Denmark', region_id: 1, created_at: Time.now)
        Admin::Country.create(id: 9, name: 'Finland', region_id: 1, created_at: Time.now)
        Admin::Country.create(id: 10, name: 'France', region_id: 1, created_at: Time.now)
        Admin::Country.create(id: 11, name: 'Germany', region_id: 1, created_at: Time.now)
        Admin::Country.create(id: 12, name: 'Hong Kong', region_id: 3, created_at: Time.now)
        Admin::Country.create(id: 13, name: 'India', region_id: 3, created_at: Time.now)
        Admin::Country.create(id: 14, name: 'Italy', region_id: 3, created_at: Time.now)
        Admin::Country.create(id: 15, name: 'Japan', region_id: 3, created_at: Time.now)

        # Report Types
        Admin::ReportType.delete_all
        Admin::ReportType.create(id: 1, name: 'Basic Report', public: true, exe_summary: false, recommendation: false, best_practice: false, supplementary: false, created_at: Time.now)
        Admin::ReportType.create(id: 2, name: 'Confidential Report', public: false, exe_summary: true, recommendation: true, best_practice: true, supplementary: true, created_at: Time.now)

        # Company Types
        Admin::CompanyType.delete_all
        Admin::CompanyType.create(id: 1, name: 'B2B', created_at: Time.now)
        Admin::CompanyType.create(id: 2, name: 'B2C', created_at: Time.now)
        Admin::CompanyType.create(id: 3, name: 'Both', created_at: Time.now)
        Admin::CompanyType.create(id: 4, name: 'Neither', created_at: Time.now)

      
        # Companies
        # Admin::Company.delete_all
        # Admin::Company.create(id: 1, name: 'IBM', url: "http://ibm.com", company_type_id: 1, renew_date: Time.now, 
        #  sector_id: 2, country_id: 2, reports_count: 0, subscription_id: 1, company_status_id: 1, created_at: Time.now)
        # Admin::Company.create(id: 2, name: 'ABB', url: "http://abb.com", company_type_id: 2, renew_date: Time.now, 
        #  sector_id: 3, country_id: 10, reports_count: 0,  subscription_id: 1, company_status_id: 1, created_at: Time.now)
        # Admin::Company.create(id: 3, name: 'Abbott', url: "http://ibm.com", company_type_id: 3, renew_date: Time.now, 
        #  sector_id: 1, country_id: 5, reports_count: 0,  subscription_id: 2, company_status_id: 2, created_at: Time.now)
        # Admin::Company.create(id: 4, name: 'Bank of America', url: "http://bankofamerica.com", company_type_id: 3, renew_date: Time.now, 
        #  sector_id: 1, country_id: 5, reports_count: 0,  subscription_id: 3, company_status_id: 1, created_at: Time.now)
        # Admin::Company.create(id: 5, name: 'ConocoPhillips', url: "http://conoco-phillips.com", company_type_id: 3, renew_date: Time.now, 
        #  sector_id: 1, country_id: 5, reports_count: 0,  subscription_id: 1, company_status_id: 3, created_at: Time.now)
        # Admin::Company.create(id: 6, name: 'AIG', url: "http://aig.com", company_type_id: 3, renew_date: Time.now, 
        #  sector_id: 1, country_id: 1, reports_count: 0,  subscription_id: 2, company_status_id: 3, created_at: Time.now)
        # Admin::Company.create(id: 5, name: 'Allianz', url: "https://www.allianz.com", company_type_id: 3, renew_date: Time.now, 
        #  sector_id: 1, country_id: 5, reports_count: 0,  subscription_id: 3, company_status_id: 2, created_at: Time.now)
        # Admin::Company.create(id: 6, name: 'Aviva', url: "http://www.aviva.com/", company_type_id: 3, renew_date: Time.now, 
        #  sector_id: 1, country_id: 1, reports_count: 0,  subscription_id: 1, company_status_id: 2, created_at: Time.now)
        # Admin::Company.create(id: 5, name: 'Banco Santander', url: "http://www.santander.com", company_type_id: 3, renew_date: Time.now, 
        #  sector_id: 1, country_id: 5, reports_count: 0,  subscription_id: 3, company_status_id: 1, created_at: Time.now)
        # Admin::Company.create(id: 6, name: 'Siemens', url: "http://www.siemens.com", company_type_id: 2, renew_date: Time.now, 
        #  sector_id: 1, country_id: 1, reports_count: 0,  subscription_id: 2, company_status_id: 1, created_at: Time.now)
    


        # Projects
        Admin::Project.delete_all
        Admin::Project.create(id: 1, name: 'Siemens October 2013', status_id: 1, publish_date: Time.now, 
         ft_index: 1, in_result_table: 0, can_compare: 1, reports_count: 0, created_at: Time.now)
        Admin::Project.create(id: 2, name: 'Rolling updates August 2013', status_id: 1, publish_date: Time.now, 
         ft_index: 1, in_result_table: 0, can_compare: 1, reports_count: 0, created_at: Time.now)
        Admin::Project.create(id: 3, name: 'FT index 2012', status_id: 1, publish_date: Time.now, 
         ft_index: 1, in_result_table: 0, can_compare: 1, reports_count: 0, created_at: Time.now)
        Admin::Project.create(id: 4, name: 'Confidential Report 2011', status_id: 1, publish_date: Time.now, 
         ft_index: 1, in_result_table: 0, can_compare: 1, reports_count: 0, created_at: Time.now)


        # Reports
        Admin::Report.delete_all
        Admin::Report.create(id: 1, name: 'Avis Basic Report', publish_date: Time.now, project_id: 1,
                company_id: 1, report_type_id: 1, created_at: Time.now)
        Admin::Report.create(id: 2, name: 'Nestle FT Index Report 2013', publish_date: Time.now, project_id: 3,
                company_id: 2, report_type_id: 1, created_at: Time.now)
        Admin::Report.create(id: 3, name: 'Taiwan Semiconductor Manufacturing FT Index Report 2013', publish_date: Time.now, project_id: 3,
                company_id: 2, report_type_id: 2, created_at: Time.now)
        Admin::Report.create(id: 4, name: 'Wells Fargo FT Index Report 2013', publish_date: Time.now, project_id: 3,
                company_id: 3, report_type_id: 1, created_at: Time.now)
        Admin::Report.create(id: 5, name: 'Apple FT Index Report 2013', publish_date: Time.now, project_id: 2,
                company_id: 4, report_type_id: 1, created_at: Time.now)
        Admin::Report.create(id: 6, name: 'LyondellBasell May 2013', publish_date: Time.now, project_id: 2,
                company_id: 4, report_type_id: 1, created_at: Time.now)
        Admin::Report.create(id: 7, name: 'KPMG & Peers February 2012', publish_date: Time.now, project_id: 4,
                company_id: 3, report_type_id: 2, created_at: Time.now)
        Admin::Report.create(id: 8, name: 'Eni December 2012', publish_date: Time.now, project_id: 4,
                company_id: 6, report_type_id: 2, created_at: Time.now)


        # Report Tag
        Admin::ReportTag.delete_all
        Admin::ReportTag.create(id: 1, name: 'about us unusual', created_at: Time.now)
        Admin::ReportTag.create(id: 2, name: 'accessibility - good', created_at: Time.now)
        Admin::ReportTag.create(id: 3, name: 'acronyms jobseekers', created_at: Time.now)
        Admin::ReportTag.create(id: 4, name: 'agm info', created_at: Time.now)
        Admin::ReportTag.create(id: 5, name: 'analyst background', created_at: Time.now)    
        Admin::ReportTag.create(id: 6, name: 'annual report HTML', created_at: Time.now)
        Admin::ReportTag.create(id: 7, name: 'annual report hybrid', created_at: Time.now)

        # Subscriptions
        Admin::Subscription.delete_all
        Admin::Subscription.create(id: 1, name: 'Demonstration', code: 'demo', created_at: Time.now)
        Admin::Subscription.create(id: 2, name: 'Private', code: 'private', created_at: Time.now)
        Admin::Subscription.create(id: 3, name: 'Premium', code: 'premium', created_at: Time.now)

        # Best Practice
        Admin::BestPractice.delete_all
        Admin::BestPractice.create(id: 1, name: 'Test best practice to check adding', 
            body: 'Testing adding best practice directly to a report, in this instance 7.1 of Siemens Confidential 2013. And then updating.',
             company_id: '3', created_at: Time.now)
        Admin::BestPractice.create(id: 2, name: 'accessibility - good', 
            body: 'Testing adding best practice directly to a report, in this instance 7.1 of Siemens Confidential 2013. And then updating.',
             company_id: '1', created_at: Time.now)
        Admin::BestPractice.create(id: 3, name: 'acronyms jobseekers', 
            body: 'Testing adding best practice directly to a report, in this instance 7.1 of Siemens Confidential 2013. And then updating.',
            company_id: '2', created_at: Time.now)
        Admin::BestPractice.create(id: 4, name: 'agm info', 
            body:' Testing adding best practice directly to a report, in this instance 7.1 of Siemens Confidential 2013. And then updating.', 
            company_id: '3', created_at: Time.now)
        Admin::BestPractice.create(id: 5, name: 'analyst background',
            body: 'Testing adding best practice directly to a report, in this instance 7.1 of Siemens Confidential 2013. And then updating.',
            company_id: '3', created_at: Time.now)    
        Admin::BestPractice.create(id: 6, name: 'annual report HTML', 
            body: 'Testing adding best practice directly to a report, in this instance 7.1 of Siemens Confidential 2013. And then updating.', 
            company_id: '2', created_at: Time.now)
        Admin::BestPractice.create(id: 7, name: 'annual report hybrid', 
            body: 'Testing adding best practice directly to a report, in this instance 7.1 of Siemens Confidential 2013. And then updating.', 
            company_id: '2', created_at: Time.now)

        

    # Metrics
        Admin::Metric.delete_all
        Admin::Metric.create(id: 1, name: 'Construction', number: 1, score: 80, created_at: Time.now)
        Admin::Metric.create(id: 2, name: 'Message', number: 2, score: 70, created_at: Time.now)
        Admin::Metric.create(id: 3, name: 'Contact', number: 3, score: 60, created_at: Time.now)
        Admin::Metric.create(id: 4, name: 'Serving Society', number: 4, score: 50, created_at: Time.now)
        Admin::Metric.create(id: 5, name: 'Serving Investers', number: 5, score: 40, created_at: Time.now)
        Admin::Metric.create(id: 6, name: 'Serving Media', number: 6, score: 10, created_at: Time.now)
        Admin::Metric.create(id: 7, name: 'Serving Jobseekers', number: 7, score: 20, created_at: Time.now)
        Admin::Metric.create(id: 8, name: 'Serving Customers', number: 8, score: 30, created_at: Time.now)
    # Submetrics 
        Admin::Metric.create(id: 1, name: 'Conventional/rational, consistent navigation on main site', number: 1, score: 80, created_at: Time.now, parent_id: 1 )
        Admin::Metric.create(id: 2, name: 'Orientation on main site, including accessibility', number: 2, score: 70, created_at: Time.now, parent_id: 1)
        Admin::Metric.create(id: 3, name: 'Integration of subsidiary sites', number: 3, score: 60, created_at: Time.now, parent_id: 1)
        Admin::Metric.create(id: 4, name: 'Internal search engine', number: 4, score: 50, created_at: Time.now, parent_id: 1)
        Admin::Metric.create(id: 5, name: 'Visibility', number: 5, score: 40, created_at: Time.now, parent_id: 1)
        
        Admin::Metric.create(id: 1, name: 'Strength of home page', number: 1, score: 80, created_at: Time.now, parent_id: 2)
        Admin::Metric.create(id: 1, name: 'Visual impact', number: 2, score: 80, created_at: Time.now, parent_id: 2)
        Admin::Metric.create(id: 1, name: 'Internationalism', number: 3, score: 80, created_at: Time.now, parent_id: 2)
        Admin::Metric.create(id: 1, name: 'Company information', number: 4, score: 80, created_at: Time.now, parent_id: 2)
        
        Admin::Metric.create(id: 1, name: 'Contact information', number: 1, score: 80, created_at: Time.now, parent_id: 3)

        Admin::Metric.create(id: 1, name: 'Corporate governance', number: 1, score: 80, created_at: Time.now, parent_id: 4)
        Admin::Metric.create(id: 1, name: 'Serving the CSR profession', number: 2, score: 80, created_at: Time.now, parent_id: 4)
        Admin::Metric.create(id: 1, name: 'Building a reputation for responsibility', number: 3, score: 80, created_at: Time.now, parent_id: 4)

        Admin::Metric.create(id: 1, name: 'Service for analysts who know the company', number: 1, score: 80, created_at: Time.now, parent_id: 5)
        Admin::Metric.create(id: 1, name: 'Service for analysts researching the company', number: 2, score: 80, created_at: Time.now, parent_id: 5)
        Admin::Metric.create(id: 1, name: 'Service for individuals', number: 3, score: 80, created_at: Time.now, parent_id: 5)

        Admin::Metric.create(id: 1, name: 'Usefulness of press release service', number: 1, score: 80, created_at: Time.now, parent_id: 6)
        Admin::Metric.create(id: 1, name: 'Keeping in touch with journalists', number: 2, score: 80, created_at: Time.now, parent_id: 6)
        Admin::Metric.create(id: 1, name: 'Background on company', number: 3, score: 80, created_at: Time.now, parent_id: 6)
        Admin::Metric.create(id: 1, name: 'Quality of image library', number: 4, score: 80, created_at: Time.now, parent_id: 6)

        Admin::Metric.create(id: 1, name: 'Central handling of online vacancies', number: 1, score: 80, created_at: Time.now, parent_id: 7)
        Admin::Metric.create(id: 1, name: 'Quality of information for college leavers', number: 2, score: 80, created_at: Time.now, parent_id: 7)
        Admin::Metric.create(id: 1, name: 'Added-value features', number: 3, score: 80, created_at: Time.now, parent_id: 7)

        Admin::Metric.create(id: 1, name: 'Journey', number: 1, score: 80, created_at: Time.now, parent_id: 8)
        Admin::Metric.create(id: 1, name: 'Decision making', number: 2, score: 80, created_at: Time.now, parent_id: 8)
        Admin::Metric.create(id: 1, name: 'Completion / onward journeys', number: 3, score: 80, created_at: Time.now, parent_id: 8)


    
        # Statuses
        Admin::ReportState.delete_all
        Admin::ReportState.create(id: 1, name: 'Commissioned', code: 'commissioned', created_at: Time.now)
        Admin::ReportState.create(id: 2, name: 'Draft', code: 'draft',  created_at: Time.now)
        Admin::ReportState.create(id: 3, name: 'Submitted for approval', code: 'submitted',  created_at: Time.now)
        Admin::ReportState.create(id: 4, name: 'Published pending live', code: 'pending',  created_at: Time.now)
        Admin::ReportState.create(id: 5, name: 'Published', code: 'published',  created_at: Time.now)


        # Company Statuses
        Admin::CompanyStatus.delete_all
        Admin::CompanyStatus.create(id: 1, name: 'Public', created_at: Time.now)
        Admin::CompanyStatus.create(id: 2, name: 'Private',  created_at: Time.now)
        Admin::CompanyStatus.create(id: 3, name: 'Goverment', created_at: Time.now)


        Admin::Commentary.delete_all
        Admin::Commentary.create(id: 1, title: 'Corus Entertainment: Switching sides', 
            intro: 'Corus Entertainment, Canada-based media and entertainment company, struggles against the limitations of its site to cater to 
                    financial analysts. Corus’ Investor Relations section is the largest in the Corporate area of its dotcom website',
            body: 'One test of a complex website is how well it handles deep-level content. Corus has run into a problem literally of its own making 
                    that forces it to adopt an unconventional and initially disorientating approach to presenting its Financial Archives. 
                    Logically it should be in the left-hand section menu and that looks more than comprehensive enough to reinforce the 
                    expectation analysts would have to find it there. The reason the archive menu is on the opposite side of the page is the site\'s 
                    construction: it is not set up for content more than one level deep, so no sub-section can nest its own clutch of headings.',
            showon_admin_dashboard: true,
            showon_wed_dashboard: false,
            publish_from: Time.now,
            publish_to: Time.now,
            created_at: Time.now
        )

        Admin::Bctip.delete_all
        Admin::Bctip.create(id: 1, title: 'Corus Entertainment: Switching sides', 
            intro: 'Corus Entertainment, Canada-based media and entertainment company, struggles against the limitations of its site to cater to 
                    financial analysts. Corus’ Investor Relations section is the largest in the Corporate area of its dotcom website',
            body: 'One test of a complex website is how well it handles deep-level content. Corus has run into a problem literally of its own making 
                    that forces it to adopt an unconventional and initially disorientating approach to presenting its Financial Archives. 
                    Logically it should be in the left-hand section menu and that looks more than comprehensive enough to reinforce the 
                    expectation analysts would have to find it there. The reason the archive menu is on the opposite side of the page is the site\'s 
                    construction: it is not set up for content more than one level deep, so no sub-section can nest its own clutch of headings.',
            showon_admin_dashboard: true,
            showon_wed_dashboard: false,
            publish_from: Time.now,
            publish_to: Time.now,
            created_at: Time.now
        )    



        Admin::Sector.delete_all
        Admin::Sector.create(id: 1, name: 'Agricultural', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('10/10/2009 16:26'))
        Admin::Sector.create(id: 2, name: 'Automobiles & parts', created_at: DateTime.parse('1/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 09:51'))
        Admin::Sector.create(id: 3, name: 'Banks', created_at: DateTime.parse('1/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 09:52'))
        Admin::Sector.create(id: 4, name: 'Chemical', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 09:52'))
        Admin::Sector.create(id: 5, name: 'Communications', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 09:54'))
        Admin::Sector.create(id: 6, name: 'Construction & materials', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 09:53'))
        Admin::Sector.create(id: 7, name: 'Media', created_at: DateTime.parse('1/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 09:55'))
        Admin::Sector.create(id: 8, name: 'Aerospace & defense', created_at: DateTime.parse('1/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 10:21'))
        Admin::Sector.create(id: 9, name: 'Education', created_at: DateTime.parse('1/09/2009 16:35'), updated_at: DateTime.parse('11/09/2009 16:35'))
        Admin::Sector.create(id: 10, name: 'Industrial engineering', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 10:01'))
        Admin::Sector.create(id: 11, name: 'Financial Services', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('11/09/2009 16:35'))
        Admin::Sector.create(id: 12, name: 'Health care equipment & services', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 10:17'))
        Admin::Sector.create(id: 13, name: 'Technology hardware & equipment', created_at: DateTime.parse('1/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 09:58'))
        Admin::Sector.create(id: 14, name: 'Legal Services', created_at: DateTime.parse('11/09/2009 16:35'), updated_at: DateTime.parse('11/09/2009 16:35'))
        Admin::Sector.create(id: 15, name: 'Leisure goods', created_at: DateTime.parse('1/09/2009 16:35'), updated_at: DateTime.parse('15/12/2009 10:18'))
        Admin::Sector.create(id: 16, name: 'Oil & Gas producers', created_at: DateTime.parse('4/10/2009 14:40'), updated_at: DateTime.parse('15/12/2009 10:00'))
        Admin::Sector.create(id: 17, name: 'Pharmaceuticals & biotechnology', created_at: DateTime.parse('4/10/2009 16:03'), updated_at: DateTime.parse('15/12/2009 09:59'))
        Admin::Sector.create(id: 18, name: 'FMCG', created_at: DateTime.parse('27/10/2009 12:10'), updated_at: DateTime.parse('15/12/2009 09:56'))
        Admin::Sector.create(id: 19, name: 'Food & drug retailers', created_at: DateTime.parse('4/11/2009 13:51'), updated_at: DateTime.parse('15/12/2009 09:59'))
        Admin::Sector.create(id: 20, name: 'Mining', created_at: DateTime.parse('24/11/2009 10:16'), updated_at: DateTime.parse('24/11/2009 10:16'))
        Admin::Sector.create(id: 21, name: 'Technology hardware and equipment', created_at: DateTime.parse('2/12/2009 14:44'), updated_at: DateTime.parse('15/12/2009 09:58'))
        Admin::Sector.create(id: 22, name: 'Manufacturing', created_at: DateTime.parse('8/12/2009 16:40'), updated_at: DateTime.parse('08/12/2009 16:40'))
        Admin::Sector.create(id: 23, name: 'Beverages', created_at: DateTime.parse('5/12/2009 09:52'), updated_at: DateTime.parse('15/12/2009 09:52'))
        Admin::Sector.create(id: 24, name: 'Construction & materials', created_at: DateTime.parse('15/12/2009 09:53'), updated_at: DateTime.parse('15/12/2009 09:53'))
        Admin::Sector.create(id: 25, name: 'Electricity', created_at: DateTime.parse('5/12/2009 09:54'), updated_at: DateTime.parse('15/12/2009 09:54'))
        Admin::Sector.create(id: 26, name: 'Electronic & electrical equipment', created_at: DateTime.parse('5/12/2009 09:54'), updated_at: DateTime.parse('15/12/2009 09:54'))
        Admin::Sector.create(id: 27, name: 'Fixed line telecommunications', created_at: DateTime.parse('5/12/2009 09:56'), updated_at: DateTime.parse('15/12/2009 09:56'))
        Admin::Sector.create(id: 28, name: 'Food producers', created_at: DateTime.parse('15/12/2009 10:15'), updated_at: DateTime.parse('15/12/2009 10:15'))
        Admin::Sector.create(id: 29, name: 'Gas, water & multiutilities', created_at: DateTime.parse('5/12/2009 10:16'), updated_at: DateTime.parse('15/12/2009 10:16'))
        Admin::Sector.create(id: 30, name: 'General industrials', created_at: DateTime.parse('5/12/2009 10:17'), updated_at: DateTime.parse('15/12/2009 10:17'))
        Admin::Sector.create(id: 31, name: 'General retailers', created_at: DateTime.parse('5/12/2009 10:17'), updated_at: DateTime.parse('15/12/2009 10:17'))
        Admin::Sector.create(id: 32, name: 'Household goods & home construction', created_at: DateTime.parse('5/12/2009 10:18'), updated_at: DateTime.parse('15/12/2009 10:18'))
        Admin::Sector.create(id: 33, name: 'Industrial metals & mining', created_at: DateTime.parse('15/12/2009 10:18'), updated_at: DateTime.parse('15/12/2009 10:18'))
        Admin::Sector.create(id: 34, name: 'Industrial transportation', created_at: DateTime.parse('5/12/2009 10:18'), updated_at: DateTime.parse('15/12/2009 10:18'))
        Admin::Sector.create(id: 35, name: 'Life insurance', created_at: DateTime.parse('15/12/2009 10:19'), updated_at: DateTime.parse('15/12/2009 10:19'))
        Admin::Sector.create(id: 36, name: 'Aerospace & defence', created_at: DateTime.parse('5/12/2009 10:19'), updated_at: DateTime.parse('15/12/2009 10:21'))
        Admin::Sector.create(id: 37, name: 'Alternative energy', created_at: DateTime.parse('15/12/2009 10:20'), updated_at: DateTime.parse('15/12/2009 10:20'))
        Admin::Sector.create(id: 38, name: 'Mobile telecommunications', created_at: DateTime.parse('5/12/2009 10:22'), updated_at: DateTime.parse('15/12/2009 10:22'))
        Admin::Sector.create(id: 39, name: 'Oil equipment & services', created_at: DateTime.parse('15/12/2009 10:23'), updated_at: DateTime.parse('15/12/2009 10:23'))
        Admin::Sector.create(id: 40, name: 'Personal goods', created_at: DateTime.parse('15/12/2009 10:23'), updated_at: DateTime.parse('15/12/2009 10:23'))
        Admin::Sector.create(id: 41, name: 'Real estate investment & services', created_at: DateTime.parse('5/12/2009 10:23'), updated_at: DateTime.parse('15/12/2009 10:23'))
        Admin::Sector.create(id: 42, name: 'Real estate investment trusts', created_at: DateTime.parse('5/12/2009 10:23'), updated_at: DateTime.parse('15/12/2009 10:23'))
        Admin::Sector.create(id: 43, name: 'Software & computer services', created_at: DateTime.parse('15/12/2009 10:24'), updated_at: DateTime.parse('15/12/2009 10:24'))
        Admin::Sector.create(id: 44, name: 'Support services', created_at: DateTime.parse('15/12/2009 10:24'), updated_at: DateTime.parse('15/12/2009 10:24'))
        Admin::Sector.create(id: 45, name: 'Tobacco', created_at: DateTime.parse('5/12/2009 10:24'), updated_at: DateTime.parse('15/12/2009 10:24'))
        Admin::Sector.create(id: 46, name: 'Travel & leisure', created_at: DateTime.parse('15/12/2009 10:24'), updated_at: DateTime.parse('15/12/2009 10:24'))
        Admin::Sector.create(id: 47, name: 'Nonlife insurance', created_at: DateTime.parse('5/12/2009 10:27'), updated_at: DateTime.parse('15/12/2009 10:27'))      
