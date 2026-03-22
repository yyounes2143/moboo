.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

.field public static final enum OTHER:Lcom/google/zxing/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

.field public static final enum RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/google/zxing/DecodeHintType;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-class v2, Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "OTHER"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    .line 12
    .line 13
    new-instance v2, Lcom/google/zxing/DecodeHintType;

    .line 14
    .line 15
    const-string v3, "PURE_BARCODE"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-class v5, Ljava/lang/Void;

    .line 19
    .line 20
    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    .line 24
    .line 25
    new-instance v3, Lcom/google/zxing/DecodeHintType;

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    const-class v7, Ljava/util/List;

    .line 29
    .line 30
    const-string v8, "POSSIBLE_FORMATS"

    .line 31
    .line 32
    invoke-direct {v3, v8, v6, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 36
    .line 37
    new-instance v7, Lcom/google/zxing/DecodeHintType;

    .line 38
    .line 39
    const-string v8, "TRY_HARDER"

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    invoke-direct {v7, v8, v9, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    sput-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 46
    .line 47
    new-instance v8, Lcom/google/zxing/DecodeHintType;

    .line 48
    .line 49
    const/4 v10, 0x4

    .line 50
    const-class v11, Ljava/lang/String;

    .line 51
    .line 52
    const-string v12, "CHARACTER_SET"

    .line 53
    .line 54
    invoke-direct {v8, v12, v10, v11}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    sput-object v8, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    .line 58
    .line 59
    new-instance v11, Lcom/google/zxing/DecodeHintType;

    .line 60
    .line 61
    const-string v12, "ALLOWED_LENGTHS"

    .line 62
    .line 63
    const/4 v13, 0x5

    .line 64
    const-class v14, [I

    .line 65
    .line 66
    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    .line 70
    .line 71
    new-instance v12, Lcom/google/zxing/DecodeHintType;

    .line 72
    .line 73
    const-string v15, "ASSUME_CODE_39_CHECK_DIGIT"

    .line 74
    .line 75
    move/from16 v16, v1

    .line 76
    .line 77
    const/4 v1, 0x6

    .line 78
    invoke-direct {v12, v15, v1, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    sput-object v12, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    .line 82
    .line 83
    new-instance v15, Lcom/google/zxing/DecodeHintType;

    .line 84
    .line 85
    move/from16 v17, v1

    .line 86
    .line 87
    const-string v1, "ASSUME_GS1"

    .line 88
    .line 89
    move/from16 v18, v4

    .line 90
    .line 91
    const/4 v4, 0x7

    .line 92
    invoke-direct {v15, v1, v4, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    sput-object v15, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    .line 96
    .line 97
    new-instance v1, Lcom/google/zxing/DecodeHintType;

    .line 98
    .line 99
    move/from16 v19, v4

    .line 100
    .line 101
    const-string v4, "RETURN_CODABAR_START_END"

    .line 102
    .line 103
    move/from16 v20, v6

    .line 104
    .line 105
    const/16 v6, 0x8

    .line 106
    .line 107
    invoke-direct {v1, v4, v6, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    sput-object v1, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    .line 111
    .line 112
    new-instance v4, Lcom/google/zxing/DecodeHintType;

    .line 113
    .line 114
    const/16 v5, 0x9

    .line 115
    .line 116
    move/from16 v21, v6

    .line 117
    .line 118
    const-class v6, Lcom/google/zxing/ResultPointCallback;

    .line 119
    .line 120
    move/from16 v22, v9

    .line 121
    .line 122
    const-string v9, "NEED_RESULT_POINT_CALLBACK"

    .line 123
    .line 124
    invoke-direct {v4, v9, v5, v6}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 125
    .line 126
    .line 127
    sput-object v4, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 128
    .line 129
    new-instance v6, Lcom/google/zxing/DecodeHintType;

    .line 130
    .line 131
    const-string v9, "ALLOWED_EAN_EXTENSIONS"

    .line 132
    .line 133
    move/from16 v23, v5

    .line 134
    .line 135
    const/16 v5, 0xa

    .line 136
    .line 137
    invoke-direct {v6, v9, v5, v14}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 138
    .line 139
    .line 140
    sput-object v6, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    .line 141
    .line 142
    const/16 v9, 0xb

    .line 143
    .line 144
    new-array v9, v9, [Lcom/google/zxing/DecodeHintType;

    .line 145
    .line 146
    aput-object v0, v9, v16

    .line 147
    .line 148
    aput-object v2, v9, v18

    .line 149
    .line 150
    aput-object v3, v9, v20

    .line 151
    .line 152
    aput-object v7, v9, v22

    .line 153
    .line 154
    aput-object v8, v9, v10

    .line 155
    .line 156
    aput-object v11, v9, v13

    .line 157
    .line 158
    aput-object v12, v9, v17

    .line 159
    .line 160
    aput-object v15, v9, v19

    .line 161
    .line 162
    aput-object v1, v9, v21

    .line 163
    .line 164
    aput-object v4, v9, v23

    .line 165
    .line 166
    aput-object v6, v9, v5

    .line 167
    .line 168
    sput-object v9, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    .line 169
    .line 170
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/DecodeHintType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/DecodeHintType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/DecodeHintType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/DecodeHintType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method
