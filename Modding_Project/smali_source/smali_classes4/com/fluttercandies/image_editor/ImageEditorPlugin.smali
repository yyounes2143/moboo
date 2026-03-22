.class public final Lcom/fluttercandies/image_editor/ImageEditorPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0001:B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u0004\u0018\u00010\u0017*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u0004\u0018\u00010\u0017*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J!\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u0004\u0018\u00010!*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0013\u0010$\u001a\u00020\u001b*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010*\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020&2\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0013\u0010-\u001a\u00020,*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008-\u0010.J;\u00104\u001a\u00020\u00072\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020,2\u0006\u00102\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00112\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u00084\u00105J\'\u00106\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u00086\u0010\u0016R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u00108\u00a8\u0006;"
    }
    d2 = {
        "Lcom/fluttercandies/image_editor/ImageEditorPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "<init>",
        "()V",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "binding",
        "",
        "onAttachedToEngine",
        "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V",
        "onDetachedFromEngine",
        "Lio/flutter/plugin/common/MethodCall;",
        "call",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "result",
        "onMethodCall",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "Lcom/fluttercandies/image_editor/core/ResultHandler;",
        "resultHandler",
        "",
        "memory",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/fluttercandies/image_editor/core/BitmapWrapper;",
        "bitmapWrapper",
        "",
        "Lcom/fluttercandies/image_editor/option/Option;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/BitmapWrapper;)Ljava/util/List;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodCall;)[B",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Landroidx/exifinterface/media/ExifInterface;",
        "exifInterface",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;",
        "Lcom/fluttercandies/image_editor/option/FormatOption;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/option/FormatOption;",
        "Lcom/fluttercandies/image_editor/core/ImageHandler;",
        "imageHandler",
        "formatOption",
        "outputMemory",
        "targetPath",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/fluttercandies/image_editor/core/ImageHandler;Lcom/fluttercandies/image_editor/option/FormatOption;ZLcom/fluttercandies/image_editor/core/ResultHandler;Ljava/lang/String;)V",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "applicationContext",
        "Companion",
        "image_editor_common_release"
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
        "SMAP\nImageEditorPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin\n+ 2 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin$Companion\n*L\n1#1,221:1\n37#2,4:222\n*S KotlinDebug\n*F\n+ 1 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin\n*L\n55#1:222,4\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Companion:Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
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

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/ImageEditorPlugin;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;
    .locals 7

    .line 1
    new-instance v0, Lcom/fluttercandies/image_editor/option/FlipOption;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v1, v2, v3}, Lcom/fluttercandies/image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    const-string v4, "Orientation"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    invoke-virtual {p2, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/16 v4, 0x5a

    .line 17
    .line 18
    const/16 v6, 0x10e

    .line 19
    .line 20
    packed-switch p2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_0
    :pswitch_0
    move v1, v6

    .line 25
    goto :goto_2

    .line 26
    :pswitch_1
    new-instance v0, Lcom/fluttercandies/image_editor/option/FlipOption;

    .line 27
    .line 28
    invoke-direct {v0, v5, v1, v2, v3}, Lcom/fluttercandies/image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    :pswitch_2
    move v1, v4

    .line 33
    goto :goto_2

    .line 34
    :pswitch_3
    new-instance v0, Lcom/fluttercandies/image_editor/option/FlipOption;

    .line 35
    .line 36
    invoke-direct {v0, v5, v1, v2, v3}, Lcom/fluttercandies/image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_4
    new-instance v0, Lcom/fluttercandies/image_editor/option/FlipOption;

    .line 41
    .line 42
    invoke-direct {v0, v1, v5, v5, v3}, Lcom/fluttercandies/image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :pswitch_5
    const/16 v1, 0xb4

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :pswitch_6
    new-instance v0, Lcom/fluttercandies/image_editor/option/FlipOption;

    .line 50
    .line 51
    invoke-direct {v0, v5, v1, v2, v3}, Lcom/fluttercandies/image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    :pswitch_7
    new-instance p2, Lcom/fluttercandies/image_editor/core/BitmapWrapper;

    .line 55
    .line 56
    invoke-direct {p2, p1, v1, v0}, Lcom/fluttercandies/image_editor/core/BitmapWrapper;-><init>(Landroid/graphics/Bitmap;ILcom/fluttercandies/image_editor/option/FlipOption;)V

    .line 57
    .line 58
    .line 59
    return-object p2

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V
    .locals 7

    .line 1
    const-string v0, "option"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Map;

    .line 8
    .line 9
    new-instance v0, Lcom/fluttercandies/image_editor/option/MergeOption;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/fluttercandies/image_editor/option/MergeOption;-><init>(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/fluttercandies/image_editor/core/ImageMerger;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/fluttercandies/image_editor/core/ImageMerger;-><init>(Lcom/fluttercandies/image_editor/option/MergeOption;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/core/ImageMerger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 v5, 0x6

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "Cannot merge image."

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v1, p2

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/core/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    move-object v1, p2

    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/fluttercandies/image_editor/option/MergeOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/image_editor/option/FormatOption;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/fluttercandies/image_editor/option/FormatOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 p3, 0x1

    .line 52
    if-ne p2, p3, :cond_2

    .line 53
    .line 54
    const-string p2, "jpg"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string p2, "png"

    .line 58
    .line 59
    :goto_0
    new-instance p3, Ljava/io/File;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 v3, 0x2e

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p3, p1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v1, p1}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v2, Lcom/fluttercandies/image_editor/core/ImageHandler;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fluttercandies/image_editor/core/BitmapWrapper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v2, v1}, Lcom/fluttercandies/image_editor/core/ImageHandler;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/BitmapWrapper;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v2, v0}, Lcom/fluttercandies/image_editor/core/ImageHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/option/FormatOption;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0, p1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    move-object v1, p0

    .line 30
    move-object v5, p2

    .line 31
    move v4, p3

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/core/ImageHandler;Lcom/fluttercandies/image_editor/option/FormatOption;ZLcom/fluttercandies/image_editor/core/ResultHandler;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/core/ImageHandler;Lcom/fluttercandies/image_editor/option/FormatOption;ZLcom/fluttercandies/image_editor/core/ResultHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/fluttercandies/image_editor/core/ImageHandler;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/option/FormatOption;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p4, p1}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-nez p5, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p4, p1}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p1, p5, p2}, Lcom/fluttercandies/image_editor/core/ImageHandler;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lcom/fluttercandies/image_editor/option/FormatOption;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4, p5}, Lcom/fluttercandies/image_editor/core/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "src"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/BitmapWrapper;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodCall;",
            "Lcom/fluttercandies/image_editor/core/BitmapWrapper;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/image_editor/option/Option;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    sget-object v0, Lcom/fluttercandies/image_editor/util/ConvertUtils;->INSTANCE:Lcom/fluttercandies/image_editor/util/ConvertUtils;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/fluttercandies/image_editor/util/ConvertUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Lcom/fluttercandies/image_editor/core/BitmapWrapper;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)[B
    .locals 1

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [B

    .line 8
    .line 9
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/option/FormatOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/fluttercandies/image_editor/util/ConvertUtils;->INSTANCE:Lcom/fluttercandies/image_editor/util/ConvertUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fluttercandies/image_editor/util/ConvertUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/option/FormatOption;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    array-length v1, p1

    .line 29
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    .line 34
    .line 35
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_1
    new-instance p1, Lcom/fluttercandies/image_editor/error/BitmapDecodeException;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/fluttercandies/image_editor/error/BitmapDecodeException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v1, "com.fluttercandies/image_editor"

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 3
    .line 4
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/fluttercandies/image_editor/core/ResultHandler;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/fluttercandies/image_editor/core/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/fluttercandies/image_editor/ImageEditorPlugin;->Companion:Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v1, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;

    .line 13
    .line 14
    invoke-direct {v1, p1, p0, v0}, Lcom/fluttercandies/image_editor/ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;-><init>(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/ImageEditorPlugin;Lcom/fluttercandies/image_editor/core/ResultHandler;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
