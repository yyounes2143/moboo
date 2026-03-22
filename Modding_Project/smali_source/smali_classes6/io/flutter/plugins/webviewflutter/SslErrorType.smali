.class public final enum Lio/flutter/plugins/webviewflutter/SslErrorType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/SslErrorType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/webviewflutter/SslErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/SslErrorType;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "DATE_INVALID",
        "EXPIRED",
        "ID_MISMATCH",
        "INVALID",
        "NOT_YET_VALID",
        "UNTRUSTED",
        "UNKNOWN",
        "Companion",
        "webview_flutter_android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/flutter/plugins/webviewflutter/SslErrorType;

.field public static final Companion:Lio/flutter/plugins/webviewflutter/SslErrorType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DATE_INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

.field public static final enum EXPIRED:Lio/flutter/plugins/webviewflutter/SslErrorType;

.field public static final enum ID_MISMATCH:Lio/flutter/plugins/webviewflutter/SslErrorType;

.field public static final enum INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

.field public static final enum NOT_YET_VALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

.field public static final enum UNKNOWN:Lio/flutter/plugins/webviewflutter/SslErrorType;

.field public static final enum UNTRUSTED:Lio/flutter/plugins/webviewflutter/SslErrorType;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Lio/flutter/plugins/webviewflutter/SslErrorType;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 3
    .line 4
    sget-object v1, Lio/flutter/plugins/webviewflutter/SslErrorType;->DATE_INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lio/flutter/plugins/webviewflutter/SslErrorType;->EXPIRED:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lio/flutter/plugins/webviewflutter/SslErrorType;->ID_MISMATCH:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lio/flutter/plugins/webviewflutter/SslErrorType;->INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lio/flutter/plugins/webviewflutter/SslErrorType;->NOT_YET_VALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lio/flutter/plugins/webviewflutter/SslErrorType;->UNTRUSTED:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sget-object v1, Lio/flutter/plugins/webviewflutter/SslErrorType;->UNKNOWN:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 2
    .line 3
    const-string v1, "DATE_INVALID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/SslErrorType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->DATE_INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 12
    .line 13
    const-string v1, "EXPIRED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/SslErrorType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->EXPIRED:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 20
    .line 21
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 22
    .line 23
    const-string v1, "ID_MISMATCH"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/SslErrorType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->ID_MISMATCH:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 30
    .line 31
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 32
    .line 33
    const-string v1, "INVALID"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/SslErrorType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->INVALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 40
    .line 41
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 42
    .line 43
    const-string v1, "NOT_YET_VALID"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/SslErrorType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->NOT_YET_VALID:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 50
    .line 51
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 52
    .line 53
    const-string v1, "UNTRUSTED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/SslErrorType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->UNTRUSTED:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 60
    .line 61
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 62
    .line 63
    const-string v1, "UNKNOWN"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/SslErrorType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->UNKNOWN:Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 70
    .line 71
    invoke-static {}, Lio/flutter/plugins/webviewflutter/SslErrorType;->$values()[Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->$VALUES:[Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 82
    .line 83
    new-instance v0, Lio/flutter/plugins/webviewflutter/SslErrorType$Companion;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, v1}, Lio/flutter/plugins/webviewflutter/SslErrorType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->Companion:Lio/flutter/plugins/webviewflutter/SslErrorType$Companion;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/flutter/plugins/webviewflutter/SslErrorType;->raw:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/flutter/plugins/webviewflutter/SslErrorType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/SslErrorType;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/webviewflutter/SslErrorType;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/SslErrorType;->$VALUES:[Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/flutter/plugins/webviewflutter/SslErrorType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 1
    iget v0, p0, Lio/flutter/plugins/webviewflutter/SslErrorType;->raw:I

    .line 2
    .line 3
    return v0
.end method
