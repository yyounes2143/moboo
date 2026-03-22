.class public final enum Lcom/tencent/vod/flutter/live/render/FTXRotation;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/vod/flutter/live/render/FTXRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/vod/flutter/live/render/FTXRotation;

.field public static final enum NORMAL:Lcom/tencent/vod/flutter/live/render/FTXRotation;

.field public static final enum ROTATION_180:Lcom/tencent/vod/flutter/live/render/FTXRotation;

.field public static final enum ROTATION_270:Lcom/tencent/vod/flutter/live/render/FTXRotation;

.field public static final enum ROTATION_90:Lcom/tencent/vod/flutter/live/render/FTXRotation;


# direct methods
.method private static synthetic $values()[Lcom/tencent/vod/flutter/live/render/FTXRotation;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 3
    .line 4
    sget-object v1, Lcom/tencent/vod/flutter/live/render/FTXRotation;->NORMAL:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_90:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_180:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_270:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 2
    .line 3
    const-string v1, "NORMAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/live/render/FTXRotation;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->NORMAL:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 10
    .line 11
    new-instance v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 12
    .line 13
    const-string v1, "ROTATION_90"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/live/render/FTXRotation;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_90:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 20
    .line 21
    new-instance v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 22
    .line 23
    const-string v1, "ROTATION_180"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/live/render/FTXRotation;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_180:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 30
    .line 31
    new-instance v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 32
    .line 33
    const-string v1, "ROTATION_270"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/live/render/FTXRotation;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_270:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 40
    .line 41
    invoke-static {}, Lcom/tencent/vod/flutter/live/render/FTXRotation;->$values()[Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->$VALUES:[Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromInt(I)Lcom/tencent/vod/flutter/live/render/FTXRotation;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/16 v0, 0x5a

    .line 4
    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0xb4

    .line 8
    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x10e

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x168

    .line 16
    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->NORMAL:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->NORMAL:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    sget-object p0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_270:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_180:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    sget-object p0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_90:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    sget-object p0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->NORMAL:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 35
    .line 36
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/vod/flutter/live/render/FTXRotation;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/vod/flutter/live/render/FTXRotation;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/vod/flutter/live/render/FTXRotation;->$VALUES:[Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/vod/flutter/live/render/FTXRotation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    const/16 v0, 0x10e

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    const/16 v0, 0xb4

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    const/16 v0, 0x5a

    .line 23
    .line 24
    return v0
.end method
