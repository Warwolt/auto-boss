import System.Random

verbs :: [String]
verbs = [
    "coonsolidate", "harmonize", "outsource", "update", "abstract",
    "brainstorm around", "implement", "validate", "benchmark", "standardize",
    "centralize", "decentralize", "streamline", "verify", "actualize",
    "document", "mindmap"]

nouns :: [String]
nouns = [
    "change-process", "ITIL", "coffe maker", "SAP", "scrum",
    "agile development", "Jboss", "cloud", "Saas", "SoA", "NoSQL", "sharepoint",
    "lean IT", "apps", "ASP.NET", "green IT", "servie structures", "MBWA",
    "clean desk", "service portfolios", "RFC", "stuff in the pipe",
    "turnkey-solutions", "backlog", "CRM", "polopoly", "disaster recovery-plan",
    "middleware", "Web 2.0 services", "HTML5" ,"CMS"]

main :: IO ()
main = do
    verb <- getRandomElem verbs
    noun <- getRandomElem nouns
    putStrLn ("boss says you should " ++ verb ++ " the " ++ noun)

getRandomElem :: [a] -> IO a
getRandomElem list = do
    index <- randomRIO (0, (length list) - 1 :: Int)
    return (list !! index)
