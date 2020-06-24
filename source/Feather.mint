enum Linecap.Type {
    Butt
    Round
    Square
}

enum Linejoin.Type {
    Arcs
    Bevel
    Miter
    MiterClip
    Round
}

record Attributes {
    width : Number,
    height : Number,
    stroke : String,
    strokeWidth : Number,
    strokeLinecap : Linecap.Type,
    strokeLinejoin : Linejoin.Type,
    viewBox : String
}

enum Icon {
    Activity
    Airplay
    AlertCircle
    AlertOctagon
    AlertTriangle
    AlignCenter
    AlignJustify
    AlignLeft
    AlignRight
    Anchor
    Aperture
    Archive
    ArrowDownCircle
    ArrowDownLeft
    ArrowDownRight
    ArrowDown
    ArrowLeftCircle
    ArrowLeft
    ArrowRightCircle
    ArrowRight
    ArrowUpCircle
    ArrowUpLeft
    ArrowUpRight
    ArrowUp
    AtSign
    Award
    BarChart2
    BarChart
    BatteryCharging
    Battery
    BellOff
    Bell
    Bluetooth
    Bold
    BookOpen
    Book
    Bookmark
    Box
    Briefcase
    Calendar
    CameraOff
    Camera
    Cast
    CheckCircle
    CheckSquare
    Check
    ChevronDown
    ChevronLeft
    ChevronRight
    ChevronUp
    ChevronsDown
    ChevronsLeft
    ChevronsRight
    ChevronsUp
    Chrome
    Circle
    Clipboard
    Clock
    CloudDrizzle
    CloudLightning
    CloudOff
    CloudRain
    CloudSnow
    Cloud
    Code
    Codepen
    Codesandbox
    Coffee
    Columns
    Command
    Compass
    Copy
    CornerDownLeft
    CornerDownRight
    CornerLeftDown
    CornerLeftUp
    CornerRightDown
    CornerRightUp
    CornerUpLeft
    CornerUpRight
    Cpu
    CreditCard
    Crop
    Crosshair
    Database
    Delete
    Disc
    DollarSign
    DownloadCloud
    Download
    Droplet
    Edit2
    Edit3
    Edit
    ExternalLink
    EyeOff
    Eye
    Facebook
    FastForward
    Feather
    Figma
    FileMinus
    FilePlus
    FileText
    File
    Film
    Filter
    Flag
    FolderMinus
    FolderPlus
    Folder
    Framer
    Frown
    Gift
    GitBranch
    GitCommit
    GitMerge
    GitPullRequest
    Github
    Gitlab
    Globe
    Grid
    HardDrive
    Hash
    Headphones
    Heart
    HelpCircle
    Hexagon
    Home
    Image
    Inbox
    Info
    Instagram
    Italic
    Key
    Layers
    Layout
    LifeBuoy
    Link2
    Link
    Linkedin
    List
    Loader
    Lock
    LogIn
    LogOut
    Mail
    MapPin
    Map
    Maximize2
    Maximize
    Meh
    Menu
    MessageCircle
    MessageSquare
    MicOff
    Mic
    Minimize2
    Minimize
    MinusCircle
    MinusSquare
    Minus
    Monitor
    Moon
    MoreHorizontal
    MoreVertical
    MousePointer
    Move
    Music
    Navigation2
    Navigation
    Octagon
    Package
    Paperclip
    PauseCircle
    Pause
    PenTool
    Percent
    PhoneCall
    PhoneForwarded
    PhoneIncoming
    PhoneMissed
    PhoneOff
    PhoneOutgoing
    Phone
    PieChart
    PlayCircle
    Play
    PlusCircle
    PlusSquare
    Plus
    Pocket
    Power
    Printer
    Radio
    RefreshCcw
    RefreshCw
    Repeat
    Rewind
    RotateCcw
    RotateCw
    Rss
    Save
    Scissors
    Search
    Send
    Server
    Settings
    Share2
    Share
    ShieldOff
    Shield
    ShoppingBag
    ShoppingCart
    Shuffle
    Sidebar
    SkipBack
    SkipForward
    Slack
    Slash
    Sliders
    Smartphone
    Smile
    Speaker
    Square
    Star
    StopCircle
    Sun
    Sunrise
    Sunset
    Tablet
    Tag
    Target
    Terminal
    Thermometer
    ThumbsDown
    ThumbsUp
    ToggleLeft
    ToggleRight
    Tool
    Trash2
    Trash
    Trello
    TrendingDown
    TrendingUp
    Triangle
    Truck
    Tv
    Twitch
    Twitter
    Type
    Umbrella
    Underline
    Unlock
    UploadCloud
    Upload
    UserCheck
    UserMinus
    UserPlus
    UserX
    User
    Users
    VideoOff
    Video
    Voicemail
    Volume1
    Volume2
    VolumeX
    Volume
    Watch
    WifiOff
    Wifi
    Wind
    XCircle
    XOctagon
    XSquare
    X
    Youtube
    ZapOff
    Zap
    ZoomIn
    ZoomOut
}

component Feather {
    connect Icons exposing { iconToHtml }

    fun linecapToString (linecapName : Linecap.Type) : String {
        case (linecapName) {
            Linecap.Type::Butt => "butt"
            Linecap.Type::Round => "round"
            Linecap.Type::Square => "square"
        }
    }

    fun linejoinToString (linejoinName : Linejoin.Type) : String {
        case (linejoinName) {
            Linejoin.Type::Arcs => "arcs"
            Linejoin.Type::Bevel => "bevel"
            Linejoin.Type::Miter => "miter"
            Linejoin.Type::MiterClip => "miter-clip"
            Linejoin.Type::Round => "round"
        }
    }

    property attributes : Attributes =
        {
            width = 24,
            height = 24,
            stroke = "currentColor",
            strokeWidth = 2,
            strokeLinecap = Linecap.Type::Round,
            strokeLinejoin = Linejoin.Type::Round,
            viewBox = "0 0 24 24"
        }

    property icon : Icon

    fun render : Html {
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width={
                attributes.width
                |> Number.toString
            }
            height={
                attributes.height
                |> Number.toString
            }
            viewBox={attributes.viewBox}
            fill="none"
            stroke={attributes.stroke}
            stroke-width={
                attributes.strokeWidth
                |> Number.toString
            }
            stroke-linecap={
                attributes.strokeLinecap
                |> linecapToString
            }
            stroke-linejoin={
                attributes.strokeLinejoin
                |> linejoinToString
            }>

            <{ iconToHtml(icon) }>

        </svg>
    }
}
