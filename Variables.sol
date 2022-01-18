// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

library Variables {
    // Baisc contract variable declaration
    string public constant _name = "Safe Coliseum";
    string public constant _symbol = "SCOLT";
    uint8 public constant _decimals = 8;
    uint256 public constant _initial_total_supply = 210000000 * 10**_decimals;

    // Token distribution veriables
    uint256 public constant _pioneer_invester_supply = (11 * _initial_total_supply) / 100;
    uint256 public constant _ifo_supply = (19 * _initial_total_supply) / 100;
    uint256 public constant _pool_airdrop_supply = (3 * _initial_total_supply) / 100;
    uint256 public constant _director_supply_each = (6 * _initial_total_supply) / 100;
    uint256 public constant _marketing_expansion_supply = (20 * _initial_total_supply) / 100;
    uint256 public constant _development_expansion_supply = (6 * _initial_total_supply) / 100;
    uint256 public constant _liquidity_supply = (5 * _initial_total_supply) / 100;
    uint256 public constant _future_team_supply = (10 * _initial_total_supply) / 100;
    uint256 public constant _governance_supply = (4 * _initial_total_supply) / 100;
    uint256 public constant _investment_parter_supply = (10 * _initial_total_supply) / 100;

    // Transaction contribution AirDrop variable
    uint256 public constant _contribution_distribute_after = 100 * 10**_decimals;
    uint256 public constant _contribution_distribution_eligibility = 10 * 10**_decimals;
    
    uint256 public constant _profit_distribution_eligibility = 10 * 10**_decimals;

    // Burning till total of 50% supply
    uint256 public constant _burning_till = _initial_total_supply / 2;

    // Whale defination
    uint256 public constant _whale_per = (_initial_total_supply / 100); // 1% of total tokans consider tobe whale

    // contribution structure defination, this will be in % ranging from 0 - 100
    uint256 public constant _normal_contribution_per = 2;
    uint256 public constant _whale_contribution_per = 5;

    // below is percentage, consider _normal_contribution_per as 100%
    uint256 public constant _normal_marketing_share = 25;
    uint256 public constant _normal_development_share = 7;
    uint256 public constant _normal_holder_share = 43;
    uint256 public constant _normal_burning_share = 25;

    // below is percentage, consider _whale_contribution_per as 100%
    uint256 public constant _whale_marketing_share = 30;
    uint256 public constant _whale_development_share = 10;
    uint256 public constant _whale_holder_share = 40;
    uint256 public constant _whale_burning_share = 20;

    // antidump variables
    uint256 public constant _max_sell_amount_whale = 5000 * 10**_decimals; // max for whale
    uint256 public constant _max_sell_amount_normal = 2000 * 10**_decimals; // max for non-whale
    uint256 public constant _max_concurrent_sale_day = 2;
    uint256 public constant _cooling_days = 2;
    uint256 public constant _max_sell_per_director_per_day = 10000 * 10**_decimals;
    uint256 public constant _investor_swap_lock_days = 2; // after 180 days will behave as normal purchase user.

    // Wallet specific declaration
    // UndefinedWallet : means 0 to check there is no wallet entry in Contract
    enum type_of_wallet {
        UndefinedWallet,
        GenesisWallet,
        DirectorWallet,
        MarketingWallet,
        DevelopmentWallet,
        LiquidityWallet,
        GovernanceWallet,
        GeneralWallet,
        FutureTeamWallet,
        PoolOrAirdropWallet,
        IfoWallet,
        UnsoldTokenWallet,
        DexPairWallet
    }

    struct _DateTime {
        uint16 year;
        uint8 month;
        uint8 day;
        uint8 hour;
        uint8 minute;
        uint8 second;
        uint8 weekday;
    }

    struct wallet_details {
        type_of_wallet wallet_type;
        uint256 balance;
        uint256 lastday_total_sell;
        uint256 concurrent_sale_day_count;
        _DateTime last_sale_date;
        _DateTime joining_date;
        bool contribution_apply;
        bool antiwhale_apply;
        bool anti_dump;
        bool is_investor;
    }

    // Chain To Chain Transfer Process Variables
    struct ctc_approval_details {
        bool has_value;
        string uctcid;
        uint256 allowed_till;
        bool used;
        bool burn_or_mint; // false = burn, true = mint
        uint256 amount;
    }

    struct distribution_variables {
        uint256 total_contributions;
        uint256 marketing_contributions;
        uint256 development_contributions;
        uint256 holder_contributions;
        uint256 burn_amount;
    }

    struct function_addresses {
        address owner;
        address sender;
        address this_address;
    }

    struct function_amounts {
        uint256 amount;
        uint256 pending_contribution_to_distribute;
        uint256 initial_total_supply;
        uint256 total_supply;
        uint256 burning_till_now;
    }

    struct function_bools {
        bool _sellers_check_recipient;
        bool _sellers_check_sender;
    }

    struct checkrules_additional_var {
        address sender;
        address recipient;
        uint256 amount;
        bool _sellers_check_recipient;
        bool _sellers_check_sender;
    }

    uint256 public constant _ctc_aproval_validation_timespan = 300; // In Seconds

    // TEDU Specific Wallets
    address public constant _director_wallet_1 = 0xd26a3AF81Eb0fd83f064b8c9f12AfCD923FA8F19;
    address public constant _director_wallet_2 = 0xba44b38b7b89A251A60C506915794F5Ac9156735;
    address public constant _marketing_wallet = 0x870d2d1af5604c265bDAf031386c1710972df625;
    address public constant _governance_wallet = 0x97Abe576E2f52B0D262D353Ea904892516068fb5;
    address public constant _liquidity_wallet = 0x08502f482FCb9FDE3A41866Ef41D796602f99281;
    address public constant _pool_airdrop_wallet = 0xcA4b115F0326070d9d1833d2F8DE2882C835063D;
    address public constant _future_team_wallet = 0x0f241406490eC9d5e292A77e6D4d405D871b4617;
    address public constant _ifo_wallet = 0xd0F9D1eAcDceC7737B016Fb9693AB50e007F3f04;
    address public constant _development_wallet = 0xbd2A6b7D5c6b8B23db9d6F5Eaa4735514Bacbb0c;
    address public constant _unsold_token_wallet = 0xC65fF1B1304Fc6d87215B982F214B5b58ebe790A;

}