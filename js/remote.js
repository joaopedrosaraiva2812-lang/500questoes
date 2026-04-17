const console_msg=`
%cPixel X App
%cScript carregado em página fora do domínio.
%cAcesse https://pixelx.app/csl e conheça como podemos otimizar as suas campanhas também.`;let console_style;if(window.matchMedia&&window.matchMedia('(prefers-color-scheme: dark)').matches){console_style=['font-size: 20px; font-weight: bold; color: #0047bb;','font-size: 16px; color: #ee7b37;','font-size: 14px; color: #f9f9f9;',]}else{console_style=['font-size: 20px; font-weight: bold; color: #0047bb;','font-size: 16px; color: #ee7b37;','font-size: 14px; color: #101820;',]}
console.log(console_msg,...console_style)