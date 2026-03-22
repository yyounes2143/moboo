.class final Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/support/v4/media/MediaMetadataCompat$Builder;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/support/v4/media/MediaMetadataCompat$Builder;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$3"
    f = "MediaNotificationManager.kt"
    i = {}
    l = {
        0x73
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMediaNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaNotificationManager.kt\ncom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,365:1\n24#2:366\n*S KotlinDebug\n*F\n+ 1 MediaNotificationManager.kt\ncom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3\n*L\n115#1:366\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $metadataBuilder:Landroid/support/v4/media/MediaMetadataCompat$Builder;

.field label:I

.field final synthetic this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/changdu/mobovideo/media/MediaNotificationManager;Landroid/support/v4/media/MediaMetadataCompat$Builder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/changdu/mobovideo/media/MediaNotificationManager;",
            "Landroid/support/v4/media/MediaMetadataCompat$Builder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->$imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->$metadataBuilder:Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->$imageUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->$metadataBuilder:Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;-><init>(Ljava/lang/String;Lcom/changdu/mobovideo/media/MediaNotificationManager;Landroid/support/v4/media/MediaMetadataCompat$Builder;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/support/v4/media/MediaMetadataCompat$Builder;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcoil/request/ImageRequest$Builder;

    .line 29
    .line 30
    sget-object v1, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {p1, v4}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->$imageUrl:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v4}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p1, v4}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lcoil/request/ImageRequest$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object v4, Lcoil/request/CachePolicy;->ENABLED:Lcoil/request/CachePolicy;

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :try_start_1
    invoke-virtual {v1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lcoil/Coil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcoil/ImageLoader;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput v3, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->label:I

    .line 69
    .line 70
    invoke-interface {v1, p1, p0}, Lcoil/ImageLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v0, :cond_2

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    :goto_0
    check-cast p1, Lcoil/request/ImageResult;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    const/4 v7, 0x7

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-static/range {v3 .. v8}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move-object p1, v2

    .line 98
    :goto_1
    invoke-static {v0, p1}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;Landroid/graphics/Bitmap;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->$metadataBuilder:Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 102
    .line 103
    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 104
    .line 105
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3;->this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;)Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    return-object p1

    .line 116
    :catch_0
    return-object v2
.end method
