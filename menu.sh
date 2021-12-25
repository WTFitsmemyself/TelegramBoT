#!/bin/bash

#----------------- Variables -----------------

PS3="---> "
NumberOfTotalCryptos="16,009"
TotalCryptoMarketCap="2,377,232,077,483"
VolOfDay="82,204,994,777"
BTCdominance="40.5%"
ETHgas="54 Gwei"
ETHdominance="20.5%"
TOTAL1="2,383,348,141,253"
TOTAL2="1,422,124,125,561"
TOTAL3="937,241,251,254"
BTCPrice="50733.33"
BTC24hPriceChange="-0.13%"
BTCVol="9.452K"
BTC24hVolChange="-24.98%"
BTCMarketCap="960,843,970,528"
i="0"
Claim="This is not a Financial Advise, Trade with the knowledge of Risk management and Money management"

#----------------- Functions -----------------

SetAlert()
{
    read -rp "Please Enter Your Selected Coin That You Want To Set Alert: " AnsAlert
    read -rp "Enter the Price For Alert: " AnsPriceAlert
    echo -e "\nOK done :)\nYour Alert For $AnsAlert has set to $AnsPriceAlert"
}


PublishAnalyze()
{
    echo -e "Hi For now"
}


RemoveTrade()
{
   echo 'Hi'
}



SwitchToAnalyzer()
{
    read -rp "Do you want to Publish your idea (y/n): " SwitchAns
    
    if [ "$SwitchAns" == "y" ] || [ "$SwitchAns" == "yes" ] || [ "$SwitchAns" == "Y" ]
    then
       echo -e 'Lets go\n'
       PublishAnalyze
    elif [ "$SwitchAns" == "n" ] || [ "$SwitchAns" == "no" ] || [ "$SwitchAns" == "N" ]
    then
       echo -e 'OK ThankYou\n'
    else
        echo -e "Invalid Option\n"
    fi
    
}


AnalayzesView()
{
    select CHOICE in "By Coin" "By Analyzer" "By Rate"
    do
        case $REPLY in
        1)
            read -rp "Please Enter Coin Name (BTC): " CoinName
            
            if [ "$CoinName" == "BTC" ] || [ "$CoinName" == "Bitcoin" ]
            then
                echo -e "-------------------------------------------\n"
                echo -e "Name: Bitcoin/BTC\n\n"
                echo -e "Entry: 40000\n"
                echo -e "SL 1: 38000\n"
                echo -e "SL 2: 35000\n"
                echo -e "TP 1: 57000\n"
                echo -e "TP 2: 68000\n"
                echo -e "Yearly Range: 25700 - 69000\n"
                echo -e "Risk/Reward: 0.1\n"
                echo -e "P/L: \n"
                echo -e "Progress Of Trade: 9% over Entry Point\n"
                echo -e "Trade Link: https://www.tradingview.com \n"
                echo -e "Live Price: 52240 \n"
                echo -e "Difference: There is 12240(9%) over the trader entry point\n"
                echo -e "$Claim"
                echo -e "-------------------------------------------\n"
            else
                echo -e "No Analysis is available for this coin\n"
            fi
        ;;
        2) 
            echo -e "Number 1 Analyzer is hosyn"
            echo -e "Number 2 Analyzer is HA"
        ;;
        3)
            select CHOICE in "Success Rate" "Activity Duration"
            do
                case $REPLY in
                1)

                ;;
                2)

                ;;
                *)
                    echo -e "Invalid Option"
                ;;
                esac
            done
        ;;
        *)
            echo -e "Invalid Option"
        ;;
        esac
    done
}


MarketInfoFull()
{
    select CHOICE in "Market General Info" "Price By Specific Coin"
    do 
    case $REPLY in
        1)
        select CHOICE in "Crypto Counts" "Total MarketCap" "24h Vol" "BTC Dominance" "ETH Gas" "ETH Dominance" "10 Top Gainers" "10 Top Losers" "TOTALs"
            do
            
            case $REPLY in
                1)
                    echo "Total Number of Cryptos: $NumberOfTotalCryptos"
                ;; 
                2)
                    echo "Total Crypto MarketCap: $TotalCryptoMarketCap"  
                ;;          
                3)
                    echo "24h Vol: $VolOfDay"
                ;;     
                4)
                    echo "BTC Dominance: $BTCdominance"
                ;;
                5)
                    echo "ETH Gas: $ETHgas"
                ;;
                6)
                    echo "ETH Dominance: $ETHdominance"
                ;;
                7)
                    #Top 10 Gainers Function
                ;;
                8)
                    #Top 10 Losers Function
                ;;
                9)
                    select CHOICE in "TOTAL 1" "TOTAL 2" "TOTAL 3"
                    do
                        case $REPLY in
                            1)
                                echo "TOTAL 1: $TOTAL1"
                            ;;
                            2)
                                echo "TOTAL 2: $TOTAL2"
                            ;;
                            3) 
                                echo "TOTAL 3: $TOTAL3"
                            ;;
                            *) 
                                echo "Choice is Invalid"  
                            ;;
                        esac
                    done
                ;;
                *)    
                    echo "Choice is Invalid"
                ;;
            esac
            done
        ;;
        2)
            read -rp "Please Enter Coin Name (BTC): " AnswerOfSelectedCoin
            
            if [ "$AnswerOfSelectedCoin" == "BTC" ] || [ "$AnswerOfSelectedCoin" == "Bitcoin" ]
            then
                echo -e "-------------------------------------------\n"
                echo -e "Name: Bitcoin/BTC\n"
                echo -e "Price: $BTCPrice\n"
                echo -e "Volume: $BTCVol\n"
                echo -e "24h Price Change: $BTC24hPriceChange\n"
                echo -e "24h Volume Change: $BTC24hVolChange\n"
                echo -e "MarketCap: $BTCMarketCap\n"
                echo -e "Coin Dominance: $BTCdominance\n"
                echo -e "-------------------------------------------\n"
                read -rp "Do you Want to see Analyzes OR set an Alert (y/n): " Ans
                
                if [ "$Ans" == "y" ] || [ "$Ans" == "yes" ] || [ "$Ans" == "Y" ] || [ "$Ans" == "YES" ]
                then
                    select CHOICE in "Analyzes View" "Set Alert"
                    do
                        case $REPLY in
                        1)
                            
                            for i in {1..3} 
                            do
                              echo -e "This is the $i Analysis: \n\n\n\n\n"  
                            done
                        ;;
                        2)
                            SetAlert
                        ;;
                        *)
                            echo "Invalid Choice"
                        ;;
                        esac
                    done
                else
                   echo -e "OK Thank You\n" 
                fi
                
            else
                echo "Coin is not available"
            fi
            
        ;;
        *) 
            echo "Choice is Invalid"   
        ;;
    esac
    done
}




UserPanel()
{
echo -e "Hello User\n"
    select CHOICE in "Market Info" "Get Analyze" "Switch to be an Analyzer"
    do
      case $REPLY in

    1)
        MarketInfoFull
    ;;
    2)
        AnalayzesView
    ;;
    3)
        #SwitchToAnalyzer
    ;;
    *)
        echo -e "Choice is Invalid\n"
    ;;
        esac
    done
}


TraderPanel()
{
    echo -e "Hello Trader\n"
        select CHOICE in "Market Info" "Add Strategy" "Get Analyzers ideas"
        do
            case $REPLY in

            1)
                MarketInfoFull
            ;;
            2)
                #AddStrategy
            ;;
            3)
                AnalayzesView
            ;;
            *)
                echo -e "Choice is Invalid\n"
            ;;
            esac
        done
}

# ---------------------- MAIN ----------------------

echo -e "Welcome to the RAD Telegram bot\n"
read -rp "Please Enter your Telegram ID: " a


if [ "$a" == "Admin" ]
then
    echo -e "Please Select Your Choice \n"
    select CHOICE in "Admin Pannel" "Trade Panel" "User" ;
    do
        case $REPLY in 

        1)
            echo -e "Hello Admin\n"
        ;;
        2) 
            TraderPanel
        ;; 
        3)
            UserPanel
        ;;
        *)
            echo -e "Sorry your choice is not valid\n";;

        esac
    done
elif [ "$a" != "Admin" ]
then
    echo -e "Please Select Your Choice \n"
    select CHOICE in "Trade Panel" "User" ;
    do
        case $REPLY in 

        1)
            TraderPanel
        ;;
        2) 
            UserPanel
        ;;
        *)
            echo -e "Sorry your choice is not valid\n"
        ;;
        esac
    done
fi
