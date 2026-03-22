.class final Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
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
        "Landroid/graphics/Bitmap;",
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
    c = "com.changdu.mobovideo.homewidget.FollowHomeWidgetUpdaterWorker$loadImage$2"
    f = "FollowHomeWidgetProvider.kt"
    i = {}
    l = {
        0xea
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFollowHomeWidgetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,250:1\n24#2:251\n*S KotlinDebug\n*F\n+ 1 FollowHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2\n*L\n234#1:251\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $imageUrl:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->$imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->$imageUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->label:I

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
    iget-object v4, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->$imageUrl:Ljava/lang/String;

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
    sget-object v4, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/16 v4, 0x45

    .line 57
    .line 58
    invoke-static {v4}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/16 v5, 0x5c

    .line 63
    .line 64
    invoke-static {v5}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {p1, v4, v5}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(II)Lcoil/request/ImageRequest$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :try_start_1
    invoke-virtual {v1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Lcoil/Coil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcoil/ImageLoader;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput v3, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;->label:I

    .line 85
    .line 86
    invoke-interface {v1, p1, p0}, Lcoil/ImageLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v0, :cond_2

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_2
    :goto_0
    check-cast p1, Lcoil/request/ImageResult;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    const/4 v7, 0x7

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    invoke-static/range {v3 .. v8}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move-object p1, v2

    .line 112
    :goto_1
    sget-object v0, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 113
    .line 114
    const/16 v1, 0x8

    .line 115
    .line 116
    invoke-static {v1}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, p1, v1}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .line 128
    .line 129
    :cond_4
    return-object v0

    .line 130
    :catch_0
    return-object v2
.end method
