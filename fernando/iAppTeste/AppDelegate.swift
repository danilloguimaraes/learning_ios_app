//
//  AppDelegate.swift
//  iAppTeste
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

//Classe que controla a troca de estados entre o Aplicativo e o SO
// Um AppDelegate por aplicação
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // Tipo o onCreate do Android
    // Pode ser usado para carregar BD, dados persistidos no celular
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("APLICAÇÃO TERMINOU O CARREGAMENTO.")
        return true
    }

    // onPause do Android
    // Usar para quando precisar pausar a aplicação quando precisar fazer outra tarefa. Por exemplo, pausar um jogo quando receber ligação
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("APLICAÇÃO PERDERÁ O FOCO EM BREVE")
    }
    
    // 'applicationWillResignActive' é antes de perder o foco
    // 'applicationDidEnterBackground' é depois de perder o foco

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("APLICAÇÃO PERDEU O FOCO")
    }

    // A Aplicação vai voltar para o foco
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("APLICAÇÃO GANHARÁ O FOCO EM BREVE")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("APLICAÇÃO GANHOU O FOCO NOVAMENTE")
    }

    // Usado para salvar os dados ou outras ações porque a aplicação vai ser encerrada
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("APLICAÇÃO SERÁ DESTRUÍDA")
    }


}

