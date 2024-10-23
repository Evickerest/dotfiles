return {
	s({trig=";ss", snippetType="autosnippet"}, fmta("\\section*{<>}", { i(1) })),
	s({trig=";sb", snippetType="autosnippet"}, fmta("\\subsection*{<>}", { i(1) })),
	s({trig=";sbb", snippetType="autosnippet"}, fmta("\\subsubsection*{<>}", { i(1) })),
	s({trig=";bt", snippetType="autosnippet"}, fmta("\\textbf{<>}", { i(1) })),
	s({trig=";it", snippetType="autosnippet"}, fmta("\\textit{<>}", { i(1) })),
	s({trig=";subt", snippetType="autosnippet"}, fmta("$<>_{\\text{<>}}$", { i(1), i(2) })),
	s({trig=";ff", snippetType="autosnippet"}, fmta("\\frac{<>}{<>}", { i(1), i(2) })),
	s({trig=";bi", snippetType="autosnippet"}, fmta("\\item \\textbf{<>}", { i(1) })),
	s({trig=";ti", snippetType="autosnippet"}, fmta("\\item <>", { i(1)})),
	s({trig=";co", snippetType="autosnippet"}, fmta("\\verb|<>|", { i(1)})),
	s({trig=";bp", snippetType="autosnippet"}, 
		fmta([[
			\documentclass{article}
			\usepackage{amsmath, amssymb, amsthm}
			\usepackage{graphicx}
			\usepackage{fancyhdr}
			\usepackage{enumerate}
			\usepackage[letterpaper, margin=1in,heightrounded]{geometry}

			\setlength{\parindent}{0pt}
			\setlength{\parskip}{0.8em}

			\pagestyle{fancy}
			\fancyhead[l]{Eric Moras}
			\fancyhead[c]{CIS 351 Notes}
			\fancyhead[r]{\today}
			\fancyfoot[c]{\thepage}

			\begin{document}
			<>
			\end{document}
			]], 
		{ i(1) })),
	s({trig=";en", snippetType="autosnippet"}, 
		fmta([[
		     \vspace{-10pt}
			 \begin{enumerate}
			 	\itemsep 0em
				\item <>
			 \end{enumerate}
			]],
		{ i(1) })
	),
	s({trig=";im", snippetType="autosnippet"}, 
		fmta([[
		     \vspace{-10pt}
			 \begin{itemize}
			 	\itemsep 0em
				\item <>
			 \end{itemize}
			]],
		{ i(1) })
	),
	s({trig=";eq", snippetType="autosnippet"},
		fmta([[
			\begin{equation*}
				\begin{split}
					<>
				\end{split}
			\end{equation*}
			]],
		{ i(1) })
	),
	s({trig=";ta", snippetType="autosnippet"},
		fmta([[
			\begin{center}
				\begin{tabular}{c c c}
					0 & 0 & 0 \\
					\hline
					0 & 0 & 0 \\ 
					0 & 0 & 0 \\ 
				\end{tabular}
			\end{center}
			]],
		{})
	),
	s({trig=";fig", snippetType="autosnippet"},
		fmta([[
			\begin{figure}[h]
				\centering
				\includegraphics[<>]{~/GVSU/Fall2024/<>}
				\caption{<>}
			\end{figure}
			]],
		{ i(1), i(2), i(3) })
	
	),
}
