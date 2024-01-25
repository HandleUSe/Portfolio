-- Fonction pour lire une entrée numérique de l'utilisateur
function lireNombre()
    io.write("Entrez un nombre : ")
    return tonumber(io.read())
end

-- Fonction pour effectuer une opération
function calculer(operation, nombre1, nombre2)
    if operation == "+" then
        return nombre1 + nombre2
    elseif operation == "-" then
        return nombre1 - nombre2
    elseif operation == "*" then
        return nombre1 * nombre2
    elseif operation == "/" then
        if nombre2 ~= 0 then
            return nombre1 / nombre2
        else
            print("Division par zéro impossible.")
            return nil
        end
    else
        print("Opération non valide.")
        return nil
    end
end

-- Fonction principale de la calculatrice
function calculatrice()
    -- Lire les nombres et l'opération
    local nombre1 = lireNombre()
    local operation = io.read()
    local nombre2 = lireNombre()

    -- Effectuer le calcul
    local resultat = calculer(operation, nombre1, nombre2)

    -- Afficher le résultat
    if resultat then
        print("Résultat : " .. resultat)
    else
        print("Erreur de calcul.")
    end
end

-- Appeler la calculatrice
calculatrice()
