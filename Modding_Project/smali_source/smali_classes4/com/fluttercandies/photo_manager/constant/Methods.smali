.class public final Lcom/fluttercandies/photo_manager/constant/Methods;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/constant/Methods$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/constant/Methods;",
        "",
        "<init>",
        "()V",
        "Companion",
        "photo_manager_release"
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/constant/Methods$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/fluttercandies/photo_manager/constant/Methods$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/constant/Methods$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->Companion:Lcom/fluttercandies/photo_manager/constant/Methods$Companion;

    .line 8
    .line 9
    const-string v7, "getAssetCount"

    .line 10
    .line 11
    const-string v8, "getAssetsByRange"

    .line 12
    .line 13
    const-string v2, "fetchPathProperties"

    .line 14
    .line 15
    const-string v3, "getAssetPathList"

    .line 16
    .line 17
    const-string v4, "getAssetListPaged"

    .line 18
    .line 19
    const-string v5, "getAssetCountFromPath"

    .line 20
    .line 21
    const-string v6, "getAssetListRange"

    .line 22
    .line 23
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "getFullFile"

    .line 30
    .line 31
    const-string v1, "getOriginBytes"

    .line 32
    .line 33
    const-string v2, "getLatLngAndroidQ"

    .line 34
    .line 35
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/fluttercandies/photo_manager/constant/Methods;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
