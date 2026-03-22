.class public final Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JM\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J+\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
        "entity",
        "",
        "width",
        "height",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "format",
        "quality",
        "",
        "frame",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "resultHandler",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;IILandroid/graphics/Bitmap$CompressFormat;IJLcom/fluttercandies/photo_manager/util/ResultHandler;)V",
        "",
        "path",
        "Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;",
        "thumbLoadOption",
        "Lcom/bumptech/glide/request/FutureTarget;",
        "Landroid/graphics/Bitmap;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;)Lcom/bumptech/glide/request/FutureTarget;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThumbnailUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThumbnailUtil.kt\ncom/fluttercandies/photo_manager/thumb/ThumbnailUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;->INSTANCE:Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;

    .line 7
    .line 8
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


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;)Lcom/bumptech/glide/request/FutureTarget;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;",
            ")",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->Wwwwwwwwwwwwww(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 23
    .line 24
    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->Kkkkkkkkkkkkkkkkkkkk(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->Kkkkkk(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->Illlllllllllllllllll(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p3}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p3}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/RequestBuilder;->Illlllllllllllll(II)Lcom/bumptech/glide/request/FutureTarget;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;IILandroid/graphics/Bitmap$CompressFormat;IJLcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/fluttercandies/photo_manager/util/ResultHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->Wwwwwwwwwwwwww(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p7, p8}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p7

    .line 18
    check-cast p7, Lcom/bumptech/glide/request/RequestOptions;

    .line 19
    .line 20
    sget-object p8, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 21
    .line 22
    invoke-virtual {p7, p8}, Lcom/bumptech/glide/request/BaseRequestOptions;->Kkkkkkkkkkkkkkkkkkkk(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 23
    .line 24
    .line 25
    move-result-object p7

    .line 26
    invoke-virtual {p1, p7}, Lcom/bumptech/glide/RequestBuilder;->Kkkkkk(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->Wwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p7

    .line 34
    invoke-virtual {p1, p7}, Lcom/bumptech/glide/RequestBuilder;->Illlllllllllllllllllll(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p7, Lcom/bumptech/glide/signature/ObjectKey;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p7, p2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p7}, Lcom/bumptech/glide/request/BaseRequestOptions;->Kkkkkkkkkkkkkkk(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 56
    .line 57
    invoke-virtual {p1, p3, p4}, Lcom/bumptech/glide/RequestBuilder;->Illlllllllllllll(II)Lcom/bumptech/glide/request/FutureTarget;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/graphics/Bitmap;

    .line 66
    .line 67
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p5, p6, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p9, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    move-object p1, v0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    const/4 p6, 0x4

    .line 90
    const/4 p7, 0x0

    .line 91
    const-string p3, "Thumbnail request error"

    .line 92
    .line 93
    const/4 p5, 0x0

    .line 94
    move-object p2, p9

    .line 95
    invoke-static/range {p2 .. p7}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/util/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
