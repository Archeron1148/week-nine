week nine notes

podcast

    this module --> communication
    reproducibility (same method, same results) vs replicability (different method, same result)
    making studies open access opens up the findings to sensationalist responses
    Dr. Ethan Watrall of Michigan State University
        openness is very complicated
        openness is a spectrum, not so binary

Packaging Data Analytical Work Reproducibly Using R (and Friends)
http://faculty.washington.edu/bmarwick/PDFs/Marwick-Boettiger-Mullen-2018-TAS-research-compendia.pdf

    Long considered an axiom of science, the reproducibilityof scientific research has recently come under scrutiny aftersome highly publicized failures to reproduce biomedical studies(Begley and Ellis2012) and psychological experiments (OpenScience Collaboration et al.2015). This has resulted in exten-sive discussion of how to define reproducibility, and how toenhance it across diverse research contexts (Stodden et al.2016;Goodman, Fanelli, and Ioannidis2016;Marwick2017). Here,we use the definition proposed by Claerbout (1992)andtheNational Science Foundation Subcommittee on Replicabilityin Science (Bollen et al.2015): reproducing research is thecalculation of quantitative scientific results by independentresearchers using the original data and methods.
    Without clear instructions, many researchersstruggle to avoid chaos in their file structures, and so are under-standably reluctant to expose their workflow for others to see.This may be one of the reasons that so many requests for detailsabout method, including requests for data and code, are turneddown or go unanswered (Collberg and Proebsting2016).
    Our contribution to this drive to improve the openness andreproducibility of research is to show how R packages can beused as a research compendium for organising and sharingfiles. 
    There are three generic principles that define researchcompendia, independent of particular software tools, and disci-plinary contexts.
        1. A research compendium should organize its filesaccording to the prevailing conventions of the scholarlycommunity, 
        2. A research compendium should maintain a clear separa-tion of data, method, and output, while unambiguouslyexpressing the relationship between those three. 
        3. A research compendium should specify the compu-tational environment that was used for the originalanalysis. 
    A dynamicdocument is a single document that includes both the narra-tive text of a article, and the R code that generates the plots andtables it includes
    ***In the specific case of using an R package as a research com-pendium, you can benefit from the quality control mechanismsrequired to successfully build an R package. By organizing filesintoanRpackage,youfollowconventionsthatsaveyoutimethinking about the best way to organize your project. Writinga function saves us from introducing errors that often resultfrom repeated copying and pasting of code. This is because youcan type one line of code (the name of your function) that callshundreds of lines of code (your function).***
    In many jurisdic-tions, data are considered facts rather than a creative work,so they are not protected by copyright law.
    Once you are ready to share your compendium, the bestway is to archive a specific commit at a repository that issuespersistent URLs, such as a Digital Object Identifier (DOI), forfile archives (e.g., osf.io, figshare.com or zenodo.org). DOIs aredesigned to be far more persistent than other URLs, which oftenbreak as web pages change over time (Klein et al.2014). Thereare many discipline-specific DOI-issuing repositories, listed atre3data.org. You should survey the literature of your researchcommunity to see what repositories are preferred.
    We encourage researchers tostrivetoorganizetheircodeinreproduciblewaysandtreattheircode and data as much a product of their scholarship worthy ofdistribution as the articles themselves.

Chapter Five: The Numbers Don’t Speak for Themselves
https://mitpressonpubpub.mitpress.mit.edu/pub/6ui5n4vo/release/4

    When approaching new knowledge – any kind of knowledge — it’s essential to ask about the social, cultural, historical and material conditions in which that knowledge was produced, as well as the identities of the humans who made (or are making) that knowledge. Rather than seeing knowledge artifacts – like datasets – as neutral and objective fodder to use for more knowledge making, a feminist perspective advocates for connecting them back to their context, to better understand their limitations and ethical obligations. And, ultimately, to better understand the ways in which power and privilege may be obscuring the truth. 
    There is even a neologism coined by Daniel Kaufmann, an economist with the Revenue Watch Institute, that has been coined to describe this phenomenon: "Zombie data" is data that has been published without any purpose or clear use case in mind.
    So, open data has a context problem. Or, a better way to say this is that governments and data providers have not invested as much time and resources in providing context to end users as they have in providing data.
    Wired magazine editor Chris Anderson would say "No." In 2008, in a now famous Wired article titled "The End of Theory," Anderson made the claim that "with enough data, the numbers speak for themselves." 
    At the point when we have data collected about an entire population, theory is no longer necessary. We also, he says, don't need models and theories to understand why something is happening, just to be able to see that one thing is correlated with another: "Correlation is enough." Anderson's main example is Google search. Google's systems don't need to understand why some pages are more linked to than others, only that it's happening, and they will then use that as an indicator of relevance in search. 
    What has unfolded since 2008 in feminist thinking is also a more sophisticated understanding of the ways in which data-driven systems like Google Search do not just reflect back the racism and sexism embedded throughout society but also participate in reinforcing it. This is the central argument of Algorithms of Oppression, Safiya Noble's study of the harmful stereotypes about Black and Latina women perpetuated by search algorithms. In direct opposition to Anderson, Noble asserts that it is the corporation's responsibility to understand racism in page-linking. Correlation, without context, is not enough when it means that Google recirculates racism.
    Simply stated, there are imbalances of power in the data setting, so we cannot take the numbers in the data set at face value. Here one needs a sophisticated understanding of the context of the data and the actors in the data collection system in order to be able to work with it ethically and truthfully. 
    One of the key analytical missteps of work that "lets the numbers speak for themselves" is the assumption that data are a raw input rather than seeing them as artifacts that have emerged fully cooked into the world, birthed out of a complex set of social and political circumstances already existing in the data setting.
    Unfortunately for Chris Anderson, the answer is that we need more theory, context, and scientific method, not less. Why? Because, quite simply, the humans are always in the loop. Even when the algorithms are doing the heavy lifting. As we showed in What Gets Counted Counts, without theory, survey designers and data analysts are relying on their intuition and "common sense" theories of the things they are measuring and modeling and this leads directly down the path towards cognitive bias.
    
