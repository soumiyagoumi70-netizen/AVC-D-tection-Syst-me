\LoadClass[a4paper,12pt]{report} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage{tocloft} % For customizing the table of contents
\RequirePackage[french]{babel} % Langue du document
\RequirePackage[utf8]{inputenc} % Caractères spéciaux
\RequirePackage[section]{placeins} % Pour placement de section
\RequirePackage[T1]{fontenc} % Encodage des fontes, notamment pour la césure des mots accentués
\RequirePackage{mathtools} % Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} % Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} % Pour placement d'images
\RequirePackage{graphicx} % Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} % Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
\RequirePackage{fancybox}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} % Configuration de la page
\setlength{\footskip}{36pt}

%-------------------- Informations sur le rapport ----------------------

\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\jury}[1]{\renewcommand{\jury}{#1}}
\newcommand{\dateSoutenance}[1]{\renewcommand{\dateSoutenance}{#1}}
\newcommand{\anneeUniversitaire}[1]{\renewcommand{\anneeUniversitaire}{#1}}


\newcommand{\fairemarges}{
    \fancyhf{} %Clear Everything.
    \fancyheadoffset{1cm}
    \setlength{\headheight}{1.5cm}
    \fancyfoot[C]{\thepage} %Page Number
    \renewcommand{\headrulewidth}{1pt} %0pt for no rule, 2pt thicker etc...
    \renewcommand{\footrulewidth}{1pt}
    \fancyfoot[L]{Neuro-Triage} % BOTTOM LEFT
    \fancyfoot[R]{\anneeUniversitaire} % BOTTOM RIGHT
    \fancyhead[L]{\nouppercase{\leftmark}} % TOP LEFT
    \fancyhead[R]{} % TOP RIGHT
    \pagestyle{fancy}
    
    % --- SÉCURITÉ : FORCER LE STYLE PLAIN ---
    % Garantit que la 1ère page de chaque chapitre affiche toujours son numéro !
    \fancypagestyle{plain}{
        \fancyhf{} 
        \fancyfoot[C]{\thepage} 
        \renewcommand{\headrulewidth}{0pt}
        \renewcommand{\footrulewidth}{0pt}
    }
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

\newgeometry{left=2.2cm,right=2.2cm,top=1.55cm,bottom=1.7cm}
\definecolor{coverblue}{RGB}{8,32,58}
\definecolor{covergold}{RGB}{184,139,54}
\thispagestyle{empty}

\noindent
\begin{minipage}[c]{0.42\textwidth}
    \raggedright
    \includegraphics[width=0.62\linewidth]{logos/ensias.png}
\end{minipage}
\hfill
\begin{minipage}[c]{0.42\textwidth}
    \raggedleft
    \includegraphics[width=0.62\linewidth]{logos/um5logo.png}
\end{minipage}

\vspace{1.15cm}
\begin{center}
    {\color{black}\rule{0.92\textwidth}{1.7pt}}\par
    \vspace{0.35cm}
    {\scshape\LARGE\color{coverblue} École Nationale Supérieure d'Informatique et d'Analyse des Systèmes - Rabat \par}
    \vspace{0.18cm}
    {\color{black}\rule{0.28\textwidth}{2.0pt}}\par
\end{center}

\vfill

\begin{center}
    {\scshape\Large\color{coverblue} \UE \par}
    \vspace{0.25cm}
    {\Large\color{coverblue} \sujet \par}

    \vspace{1.05cm}
    {\color{black}\rule{0.82\textwidth}{2.0pt}}\par
    \vspace{0.42cm}
    {\Huge\bfseries\color{coverblue}\linespread{1.08}\selectfont \titre \par}
    \vspace{0.42cm}
    {\color{black}\rule{0.82\textwidth}{2.0pt}}\par
\end{center}

\vfill

\noindent
\begin{minipage}[t]{0.47\textwidth}
    \raggedright
    {\large\bfseries\color{coverblue} Réalisé par :}\par
    \vspace{0.25cm}
    {\large \eleves\par}
\end{minipage}
\hfill
\begin{minipage}[t]{0.47\textwidth}
    \raggedleft
    {\large\bfseries\color{coverblue} Encadré par :}\par
    \vspace{0.25cm}
    {\large \enseignant \par}
\end{minipage}

\vspace{1.5cm}

\begin{center}
    \begin{minipage}{0.78\textwidth}
        \centering
        {\large\bfseries\color{coverblue} Soutenu le \dateSoutenance{} devant le jury composé de :}\par
        \vspace{0.25cm}
        {\large \jury \par}
    \end{minipage}
\end{center}

\vfill

\begin{center}
    {\color{black}\rule{0.42\textwidth}{1.4pt}}\par
    \vspace{0.22cm}
    {\large\bfseries\color{coverblue} Année universitaire \anneeUniversitaire\par}
\end{center}
\restoregeometry

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{

}