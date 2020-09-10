//
//  ViewController.swift
//  Signos
//
//  Created by Jamilton  Damasceno
//  Copyright © 2017 Jamilton  Damasceno. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significados:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configura signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //configura significados
        significados.append("Dinâmicos e sinceros, quem tem sol em Áries costuma ter um forte contato com a sua individualidade, que pode parecer egoísmo em alguns momentos. Arianas e arianos tendem a ser alegres e muito extrovertidos, mas também podem ser bastante competitivos e soar um pouco autoritários. ")
        significados.append("Quem nasce com o sol no signo de Touro, ou seja, taurinas e taurinos, em geral se identifica com características como a paciência, o bom gosto e a sensualidade. Também costumam valorizar o prazer e o conforto. Gratidão, amor e um pouco de teimosia podem ser marcas registrada")
        significados.append("Quem nasce com o sol no signo de Gêmeos, ou seja, geminianas e geminianos, em geral se identifica com características como a curiosidade, a inteligência e o desejo de liberdade. Costumam ter muita facilidade para puxar conversa e fazer novas amizades, mas também podem ser impacientes.")
        significados.append("Quem nasce com o sol no signo de Câncer pode se identificar com características como a sensibilidade e o carinho. Cancerianos e cancerianas típicos costumam ter uma ótima intuição, além de um forte vínculo com seus familiares. A busca constante por segurança também é bem presente.")
        significados.append("Quem nasce com o sol no signo de Leão pode se identificar com características como a criatividade e a coragem. Leoninos e leoninas típicos costumam ter uma ótima autoestima, além de uma nobreza de espírito natural. A generosidade e o otimismo também podem ser bem presentes.")
        significados.append("Quem nasce com o sol no signo de Virgem pode se identificar com características como a objetividade e a organização. Virginianas e virginianos típicos costumam buscar constantemente a perfeição, além de identificar facilmente detalhes que passam despercebidos por todos os outros.")
        significados.append("Quem nasce com o sol no signo de Libra, em geral, se identifica com características como a cortesia, a delicadeza e a busca constante pelo equilíbrio. Librianas e librianos típicos tendem a buscar viver relacionamentos e também a ter um pouco de dificuldade para tomar decisões.")
        significados.append("Quem nasce com o sol no signo de Escorpião pode se identificar com características como a intensidade e o poder de transformação. Escorpianas e escorpianos típicos costumam ser bastante passionais e muito generosos. O espírito de detetive e o sexto sentido afiado também são bem marcantes.")
        significados.append("Quem nasce com o sol no signo de Sagitário pode se identificar com características como o otimismo e o desejo de liberdade. Sagitarianas e sagitarianos típicos costumam ser viajantes e, geralmente, enxergam o mundo inteiro como sua casa. A jovialidade também é uma característica marcante.")
        significados.append("Quem nasce com o sol no signo de Capricórnio pode se identificar com características como a persistência e a responsabilidade. Capricornianas e capricornianos típicos costumam ter metas bem definidas e noção dos seus limites. A relação próxima com o trabalho também pode ser bem presente.")
        significados.append("Quem nasce com o sol no signo de Aquário pode se identificar com características como o desejo de inovar e a independência. Aquarianas e aquarianos típicos costumam ser bastante idealistas e prezam por experiências que trazem liberdade. Podem ter posturas consideradas radicais e do contra")
        significados.append("Quem nasce com o sol no signo de Peixes pode se identificar com características como a sensibilidade e a intuição. Piscianos e piscianas típicos costumam ser bastante solidários e muitas vezes têm uma forte conexão com a espiritualidade. Bastante sonhadores, esses nativos podem se iludir com certa facilidade.")
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath )
        celula.textLabel?.text = signos[ indexPath.row ]
        
        return celula
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let informacaoSigno = significados[ indexPath.row ]
        let alerta: UIAlertController = UIAlertController(title: "Sobre seu signo", message: informacaoSigno , preferredStyle: .alert )
        let confirmacaoAcao: UIAlertAction = UIAlertAction(title: "OK", style: .default , handler: nil )
        alerta.addAction(confirmacaoAcao)
        
        present(alerta, animated: true, completion: nil )
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

