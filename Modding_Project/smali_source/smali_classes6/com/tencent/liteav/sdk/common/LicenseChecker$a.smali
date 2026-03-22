.class public final enum Lcom/tencent/liteav/sdk/common/LicenseChecker$a;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/sdk/common/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/sdk/common/LicenseChecker$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum b:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum c:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum d:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum e:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum f:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum g:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum h:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum i:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum j:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field private static final synthetic k:[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 2
    .line 3
    const-string v1, "PUSHER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->a:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 11
    .line 12
    new-instance v1, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 13
    .line 14
    const-string v4, "UGC_SIMPLE"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->b:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 21
    .line 22
    new-instance v4, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 23
    .line 24
    const-string v6, "UGC_STANDARD"

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->c:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 31
    .line 32
    new-instance v6, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 33
    .line 34
    const-string v8, "PITU_SIMPLE"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    const/16 v10, 0x8

    .line 38
    .line 39
    invoke-direct {v6, v8, v9, v10}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->d:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 43
    .line 44
    new-instance v8, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 45
    .line 46
    const-string v11, "PITU"

    .line 47
    .line 48
    const/16 v12, 0x10

    .line 49
    .line 50
    invoke-direct {v8, v11, v7, v12}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v8, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->e:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 54
    .line 55
    new-instance v11, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 56
    .line 57
    const/4 v12, 0x5

    .line 58
    const/16 v13, 0x20

    .line 59
    .line 60
    const-string v14, "PLAYER_STANDARD"

    .line 61
    .line 62
    invoke-direct {v11, v14, v12, v13}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v11, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->f:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 66
    .line 67
    new-instance v13, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 68
    .line 69
    const/4 v14, 0x6

    .line 70
    const/16 v15, 0x40

    .line 71
    .line 72
    move/from16 v16, v2

    .line 73
    .line 74
    const-string v2, "PLAYER_MONET"

    .line 75
    .line 76
    invoke-direct {v13, v2, v14, v15}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->g:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 80
    .line 81
    new-instance v2, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 82
    .line 83
    const/4 v15, 0x7

    .line 84
    move/from16 v17, v3

    .line 85
    .line 86
    const/16 v3, 0x80

    .line 87
    .line 88
    move/from16 v18, v5

    .line 89
    .line 90
    const-string v5, "PLAYER_PREMIUM"

    .line 91
    .line 92
    invoke-direct {v2, v5, v15, v3}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v2, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->h:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 96
    .line 97
    new-instance v3, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 98
    .line 99
    const-string v5, "PLAYER_ENTERPRISE"

    .line 100
    .line 101
    move/from16 v19, v7

    .line 102
    .line 103
    const/16 v7, 0x100

    .line 104
    .line 105
    invoke-direct {v3, v5, v10, v7}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v3, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->i:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 109
    .line 110
    new-instance v5, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 111
    .line 112
    const/16 v7, 0x9

    .line 113
    .line 114
    move/from16 v20, v9

    .line 115
    .line 116
    const/16 v9, 0x200

    .line 117
    .line 118
    move/from16 v21, v10

    .line 119
    .line 120
    const-string v10, "PLAYER_PROJECTION"

    .line 121
    .line 122
    invoke-direct {v5, v10, v7, v9}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    sput-object v5, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->j:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 126
    .line 127
    const/16 v9, 0xa

    .line 128
    .line 129
    new-array v9, v9, [Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 130
    .line 131
    aput-object v0, v9, v16

    .line 132
    .line 133
    aput-object v1, v9, v17

    .line 134
    .line 135
    aput-object v4, v9, v18

    .line 136
    .line 137
    aput-object v6, v9, v20

    .line 138
    .line 139
    aput-object v8, v9, v19

    .line 140
    .line 141
    aput-object v11, v9, v12

    .line 142
    .line 143
    aput-object v13, v9, v14

    .line 144
    .line 145
    aput-object v2, v9, v15

    .line 146
    .line 147
    aput-object v3, v9, v21

    .line 148
    .line 149
    aput-object v5, v9, v7

    .line 150
    .line 151
    sput-object v9, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->k:[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 152
    .line 153
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
    iput p3, p0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/sdk/common/LicenseChecker$a;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->k:[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 8
    .line 9
    return-object v0
.end method
