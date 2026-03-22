.class public final enum Lcom/tencent/liteav/videobase/common/a;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/common/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum b:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum c:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum d:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum e:Lcom/tencent/liteav/videobase/common/a;

.field private static final f:[Lcom/tencent/liteav/videobase/common/a;

.field private static final synthetic g:[Lcom/tencent/liteav/videobase/common/a;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/common/a;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "UNKNOWN"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/tencent/liteav/videobase/common/a;->a:Lcom/tencent/liteav/videobase/common/a;

    .line 11
    .line 12
    new-instance v1, Lcom/tencent/liteav/videobase/common/a;

    .line 13
    .line 14
    const-string v2, "H264"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    .line 21
    .line 22
    new-instance v2, Lcom/tencent/liteav/videobase/common/a;

    .line 23
    .line 24
    const-string v5, "H265"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v4}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/tencent/liteav/videobase/common/a;->c:Lcom/tencent/liteav/videobase/common/a;

    .line 31
    .line 32
    new-instance v5, Lcom/tencent/liteav/videobase/common/a;

    .line 33
    .line 34
    const-string v7, "VP8"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v6}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v5, Lcom/tencent/liteav/videobase/common/a;->d:Lcom/tencent/liteav/videobase/common/a;

    .line 41
    .line 42
    new-instance v7, Lcom/tencent/liteav/videobase/common/a;

    .line 43
    .line 44
    const-string v9, "KAV1"

    .line 45
    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v8}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lcom/tencent/liteav/videobase/common/a;->e:Lcom/tencent/liteav/videobase/common/a;

    .line 51
    .line 52
    const/4 v9, 0x5

    .line 53
    new-array v9, v9, [Lcom/tencent/liteav/videobase/common/a;

    .line 54
    .line 55
    aput-object v0, v9, v3

    .line 56
    .line 57
    aput-object v1, v9, v4

    .line 58
    .line 59
    aput-object v2, v9, v6

    .line 60
    .line 61
    aput-object v5, v9, v8

    .line 62
    .line 63
    aput-object v7, v9, v10

    .line 64
    .line 65
    sput-object v9, Lcom/tencent/liteav/videobase/common/a;->g:[Lcom/tencent/liteav/videobase/common/a;

    .line 66
    .line 67
    invoke-static {}, Lcom/tencent/liteav/videobase/common/a;->values()[Lcom/tencent/liteav/videobase/common/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/tencent/liteav/videobase/common/a;->f:[Lcom/tencent/liteav/videobase/common/a;

    .line 72
    .line 73
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
    iput p3, p0, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/common/a;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/common/a;->f:[Lcom/tencent/liteav/videobase/common/a;

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
    iget v4, v3, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    .line 10
    .line 11
    if-ne p0, v4, :cond_0

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
    sget-object p0, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/common/a;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/liteav/videobase/common/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/liteav/videobase/common/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/common/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/common/a;->g:[Lcom/tencent/liteav/videobase/common/a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/common/a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/liteav/videobase/common/a;

    .line 8
    .line 9
    return-object v0
.end method
