.class public final enum Lcom/tencent/liteav/videobase/common/e;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/common/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/common/e;

.field public static final enum b:Lcom/tencent/liteav/videobase/common/e;

.field public static final enum c:Lcom/tencent/liteav/videobase/common/e;

.field public static final enum d:Lcom/tencent/liteav/videobase/common/e;

.field public static final enum e:Lcom/tencent/liteav/videobase/common/e;

.field public static final enum f:Lcom/tencent/liteav/videobase/common/e;

.field public static final enum g:Lcom/tencent/liteav/videobase/common/e;

.field private static final h:[Lcom/tencent/liteav/videobase/common/e;

.field private static final synthetic i:[Lcom/tencent/liteav/videobase/common/e;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/common/e;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/videobase/common/e;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/tencent/liteav/videobase/common/e;->a:Lcom/tencent/liteav/videobase/common/e;

    .line 10
    .line 11
    new-instance v1, Lcom/tencent/liteav/videobase/common/e;

    .line 12
    .line 13
    const-string v3, "BASELINE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/liteav/videobase/common/e;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/tencent/liteav/videobase/common/e;->b:Lcom/tencent/liteav/videobase/common/e;

    .line 20
    .line 21
    new-instance v3, Lcom/tencent/liteav/videobase/common/e;

    .line 22
    .line 23
    const-string v5, "MAIN"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/liteav/videobase/common/e;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/tencent/liteav/videobase/common/e;->c:Lcom/tencent/liteav/videobase/common/e;

    .line 30
    .line 31
    new-instance v5, Lcom/tencent/liteav/videobase/common/e;

    .line 32
    .line 33
    const-string v7, "HIGH"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/liteav/videobase/common/e;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/tencent/liteav/videobase/common/e;->d:Lcom/tencent/liteav/videobase/common/e;

    .line 40
    .line 41
    new-instance v7, Lcom/tencent/liteav/videobase/common/e;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const/16 v10, 0xb

    .line 45
    .line 46
    const-string v11, "BASELINE_RPS"

    .line 47
    .line 48
    invoke-direct {v7, v11, v9, v10}, Lcom/tencent/liteav/videobase/common/e;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v7, Lcom/tencent/liteav/videobase/common/e;->e:Lcom/tencent/liteav/videobase/common/e;

    .line 52
    .line 53
    new-instance v10, Lcom/tencent/liteav/videobase/common/e;

    .line 54
    .line 55
    const/4 v11, 0x5

    .line 56
    const/16 v12, 0xc

    .line 57
    .line 58
    const-string v13, "MAIN_RPS"

    .line 59
    .line 60
    invoke-direct {v10, v13, v11, v12}, Lcom/tencent/liteav/videobase/common/e;-><init>(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    sput-object v10, Lcom/tencent/liteav/videobase/common/e;->f:Lcom/tencent/liteav/videobase/common/e;

    .line 64
    .line 65
    new-instance v12, Lcom/tencent/liteav/videobase/common/e;

    .line 66
    .line 67
    const/4 v13, 0x6

    .line 68
    const/16 v14, 0xd

    .line 69
    .line 70
    const-string v15, "HIGH_RPS"

    .line 71
    .line 72
    invoke-direct {v12, v15, v13, v14}, Lcom/tencent/liteav/videobase/common/e;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    sput-object v12, Lcom/tencent/liteav/videobase/common/e;->g:Lcom/tencent/liteav/videobase/common/e;

    .line 76
    .line 77
    const/4 v14, 0x7

    .line 78
    new-array v14, v14, [Lcom/tencent/liteav/videobase/common/e;

    .line 79
    .line 80
    aput-object v0, v14, v2

    .line 81
    .line 82
    aput-object v1, v14, v4

    .line 83
    .line 84
    aput-object v3, v14, v6

    .line 85
    .line 86
    aput-object v5, v14, v8

    .line 87
    .line 88
    aput-object v7, v14, v9

    .line 89
    .line 90
    aput-object v10, v14, v11

    .line 91
    .line 92
    aput-object v12, v14, v13

    .line 93
    .line 94
    sput-object v14, Lcom/tencent/liteav/videobase/common/e;->i:[Lcom/tencent/liteav/videobase/common/e;

    .line 95
    .line 96
    invoke-static {}, Lcom/tencent/liteav/videobase/common/e;->values()[Lcom/tencent/liteav/videobase/common/e;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lcom/tencent/liteav/videobase/common/e;->h:[Lcom/tencent/liteav/videobase/common/e;

    .line 101
    .line 102
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
    iput p3, p0, Lcom/tencent/liteav/videobase/common/e;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/common/e;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/common/e;->h:[Lcom/tencent/liteav/videobase/common/e;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget v4, v3, Lcom/tencent/liteav/videobase/common/e;->mValue:I

    .line 10
    .line 11
    if-ne v4, p0, :cond_0

    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/common/e;->a:Lcom/tencent/liteav/videobase/common/e;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/common/e;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/liteav/videobase/common/e;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/liteav/videobase/common/e;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/common/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/common/e;->i:[Lcom/tencent/liteav/videobase/common/e;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/common/e;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/liteav/videobase/common/e;

    .line 8
    .line 9
    return-object v0
.end method
