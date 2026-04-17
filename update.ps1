$pathHtml = 'C:\Users\João\Desktop\500 questoes\assets\500 Questões INSS - Método Aprovado por Concurseiros.html'
$html = [IO.File]::ReadAllText($pathHtml, [System.Text.Encoding]::UTF8)

# 1. Update title
$html = $html.Replace('3 BÔNUS EXCLUSIVOS:', '6 BÔNUS EXCLUSIVOS:')

# 2. Update HTML cards
$oldCard3 = '<div class="rounded-lg border text-card-foreground shadow-sm overflow-hidden hover:shadow-2xl transition-all hover:-translate-y-2 bg-card border-border"><div class="p-6"><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 mb-3 bg-accent text-accent-foreground border-0">🎁 BÔNUS #3</div><h3 class="text-xl font-bold mb-2 text-card-foreground">Atualização gratuita</h3><div class="flex items-center gap-2"><span class="text-muted-foreground line-through">Valor: incalculável</span><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 bg-success text-success-foreground border-0">GRÁTIS HOJE</div></div></div></div>'

$newCard3 = '<div class="rounded-lg border text-card-foreground shadow-sm overflow-hidden hover:shadow-2xl transition-all hover:-translate-y-2 bg-card border-border"><div class="p-6"><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 mb-3 bg-accent text-accent-foreground border-0">🎁 BÔNUS #3</div><h3 class="text-xl font-bold mb-2 text-card-foreground">Técnica pra estudar com pouco tempo</h3><div class="flex items-center gap-2"><span class="text-muted-foreground line-through">Valor: R$ 25,00</span><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 bg-success text-success-foreground border-0">GRÁTIS HOJE</div></div></div></div>'

$newCard4 = '<div class="rounded-lg border text-card-foreground shadow-sm overflow-hidden hover:shadow-2xl transition-all hover:-translate-y-2 bg-card border-border"><div class="p-6"><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 mb-3 bg-accent text-accent-foreground border-0">🎁 BÔNUS #4</div><h3 class="text-xl font-bold mb-2 text-card-foreground">Método de revisão em 7 dias</h3><div class="flex items-center gap-2"><span class="text-muted-foreground line-through">Valor: R$ 21,00</span><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 bg-success text-success-foreground border-0">GRÁTIS HOJE</div></div></div></div>'

$newCard5 = '<div class="rounded-lg border text-card-foreground shadow-sm overflow-hidden hover:shadow-2xl transition-all hover:-translate-y-2 bg-card border-border"><div class="p-6"><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 mb-3 bg-accent text-accent-foreground border-0">🎁 BÔNUS #5</div><h3 class="text-xl font-bold mb-2 text-card-foreground">Mapa mental das matérias principais</h3><div class="flex items-center gap-2"><span class="text-muted-foreground line-through">Valor: R$ 27,00</span><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 bg-success text-success-foreground border-0">GRÁTIS HOJE</div></div></div></div>'

$newCard6 = '<div class="rounded-lg border text-card-foreground shadow-sm overflow-hidden hover:shadow-2xl transition-all hover:-translate-y-2 bg-card border-border"><div class="p-6"><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 mb-3 bg-accent text-accent-foreground border-0">🎁 BÔNUS #6</div><h3 class="text-xl font-bold mb-2 text-card-foreground">Atualização gratuita</h3><div class="flex items-center gap-2"><span class="text-muted-foreground line-through">Valor: incalculável</span><div class="inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent hover:bg-primary/80 bg-success text-success-foreground border-0">GRÁTIS HOJE</div></div></div></div>'

$html = $html.Replace($oldCard3, "$newCard3$newCard4$newCard5$newCard6")

# 3. Update HTML summary list
$oldSummary3 = '<div class="flex justify-between text-accent-foreground/80 line-through"><span>Bônus #3 - Atualização gratuita:</span><span class="font-bold">incalculável</span></div>'

$newSummary3 = '<div class="flex justify-between text-accent-foreground/80 line-through"><span>Bônus #3 - Técnica pra estudar com pouco tempo:</span><span class="font-bold">R$ 25,00</span></div>'
$newSummary4 = '<div class="flex justify-between text-accent-foreground/80 line-through"><span>Bônus #4 - Método de revisão em 7 dias:</span><span class="font-bold">R$ 21,00</span></div>'
$newSummary5 = '<div class="flex justify-between text-accent-foreground/80 line-through"><span>Bônus #5 - Mapa mental das matérias principais:</span><span class="font-bold">R$ 27,00</span></div>'
$newSummary6 = '<div class="flex justify-between text-accent-foreground/80 line-through"><span>Bônus #6 - Atualização gratuita:</span><span class="font-bold">incalculável</span></div>'

$html = $html.Replace($oldSummary3, "$newSummary3$newSummary4$newSummary5$newSummary6")

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[IO.File]::WriteAllText($pathHtml, $html, $utf8NoBom)


# --- JS FILE ---
$pathJs = 'C:\Users\João\Desktop\500 questoes\assets\index-CYbhK5Vy.js'
$js = [IO.File]::ReadAllText($pathJs, [System.Text.Encoding]::UTF8)

# 1. Update array `c2` which has `.number:3,title:"Atualização gratuita"`
$js = $js.Replace('3 BÔNUS EXCLUSIVOS:', '6 BÔNUS EXCLUSIVOS:')

# 2. Add extra items before the Atualização gratuita in the array. Notice emoji string has encoded bytes when writing literal, but PowerShell string will match if encoded right? Let's just match `{number:3,title:"Atualiza`
$oldArr3 = '{number:3,title:"Atualiza'
$newArrItems = '{number:3,title:"Técnica pra estudar com pouco tempo",value:"R$ 25,00",image:null,emoji:"🎁",features:[]},{number:4,title:"Método de revisão em 7 dias",value:"R$ 21,00",image:null,emoji:"🎁",features:[]},{number:5,title:"Mapa mental das matérias principais",value:"R$ 27,00",image:null,emoji:"🎁",features:[]},{number:6,title:"Atualiza'
$js = $js.Replace($oldArr3, $newArrItems)

# 3. Update the summary code blocks
$oldJsSummary3 = 'u.jsxs("div",{className:"flex justify-between text-accent-foreground/80 line-through",children:[u.jsx("span",{children:"Bônus #3 - Atualização gratuita:"}),u.jsx("span",{className:"font-bold",children:"incalculável"})]})'

$newJsSummaryItems = 'u.jsxs("div",{className:"flex justify-between text-accent-foreground/80 line-through",children:[u.jsx("span",{children:"Bônus #3 - Técnica pra estudar com pouco tempo:"}),u.jsx("span",{className:"font-bold",children:"R$ 25,00"})]}),' +
'u.jsxs("div",{className:"flex justify-between text-accent-foreground/80 line-through",children:[u.jsx("span",{children:"Bônus #4 - Método de revisão em 7 dias:"}),u.jsx("span",{className:"font-bold",children:"R$ 21,00"})]}),' +
'u.jsxs("div",{className:"flex justify-between text-accent-foreground/80 line-through",children:[u.jsx("span",{children:"Bônus #5 - Mapa mental das matérias principais:"}),u.jsx("span",{className:"font-bold",children:"R$ 27,00"})]}),' +
'u.jsxs("div",{className:"flex justify-between text-accent-foreground/80 line-through",children:[u.jsx("span",{children:"Bônus #6 - Atualização gratuita:"}),u.jsx("span",{className:"font-bold",children:"incalculável"})]})'

$js = $js.Replace($oldJsSummary3, $newJsSummaryItems)

[IO.File]::WriteAllText($pathJs, $js, $utf8NoBom)
Write-Host "Replaced!"
