.class public final Lcoil/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00192\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0010\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020\u00002\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010/\u001a\u00020\u00002\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100J\r\u00101\u001a\u00020\u0006\u00a2\u0006\u0004\u00081\u00102R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u00103R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00104R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u00105R\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00107R\u0018\u0010;\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010:R\u0018\u0010>\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010IR,\u0010O\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030L\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030M\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010NR\u0018\u0010R\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010QR\u001c\u0010V\u001a\u0008\u0012\u0004\u0012\u00020T0S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R(\u0010b\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030M\u0012\u0004\u0012\u00020\u0001\u0018\u00010_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010e\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010gR\u0016\u0010l\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010dR\u0018\u0010o\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010nR\u0018\u0010s\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010nR\u0018\u0010w\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0018\u0010y\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010vR\u0018\u0010{\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010vR\u0018\u0010}\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010vR\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010=R\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u0085\u0001R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u0089\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0085\u0001R\u001c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0089\u0001R\u001b\u0010\u0095\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001b\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u001b\u0010\u009d\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u0094\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u0097\u0001R\u001b\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u009a\u0001\u00a8\u0006\u00a2\u0001"
    }
    d2 = {
        "Lcoil/request/ImageRequest$Builder;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcoil/request/ImageRequest;",
        "request",
        "(Lcoil/request/ImageRequest;Landroid/content/Context;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroidx/lifecycle/Lifecycle;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroidx/lifecycle/Lifecycle;",
        "Lcoil/size/SizeResolver;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/size/SizeResolver;",
        "Lcoil/size/Scale;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/size/Scale;",
        "data",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;",
        "",
        "width",
        "height",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(II)Lcoil/request/ImageRequest$Builder;",
        "Lcoil/size/Size;",
        "size",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;",
        "resolver",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;",
        "",
        "enable",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Z)Lcoil/request/ImageRequest$Builder;",
        "Lcoil/request/CachePolicy;",
        "policy",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;",
        "Lcoil/request/DefaultRequestOptions;",
        "defaults",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/request/ImageRequest;",
        "Landroid/content/Context;",
        "Lcoil/request/DefaultRequestOptions;",
        "Ljava/lang/Object;",
        "Lcoil/target/Target;",
        "Lcoil/target/Target;",
        "target",
        "Lcoil/request/ImageRequest$Listener;",
        "Lcoil/request/ImageRequest$Listener;",
        "listener",
        "Lcoil/memory/MemoryCache$Key;",
        "Lcoil/memory/MemoryCache$Key;",
        "memoryCacheKey",
        "",
        "Ljava/lang/String;",
        "diskCacheKey",
        "Landroid/graphics/Bitmap$Config;",
        "Landroid/graphics/Bitmap$Config;",
        "bitmapConfig",
        "Landroid/graphics/ColorSpace;",
        "Landroid/graphics/ColorSpace;",
        "colorSpace",
        "Lcoil/size/Precision;",
        "Lcoil/size/Precision;",
        "precision",
        "Lkotlin/Pair;",
        "Lcoil/fetch/Fetcher$Factory;",
        "Ljava/lang/Class;",
        "Lkotlin/Pair;",
        "fetcherFactory",
        "Lcoil/decode/Decoder$Factory;",
        "Lcoil/decode/Decoder$Factory;",
        "decoderFactory",
        "",
        "Lcoil/transform/Transformation;",
        "Ljava/util/List;",
        "transformations",
        "Lcoil/transition/Transition$Factory;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Lcoil/transition/Transition$Factory;",
        "transitionFactory",
        "Lokhttp3/Headers$Builder;",
        "Wwwwwwwwwwwwwwwwwwww",
        "Lokhttp3/Headers$Builder;",
        "headers",
        "",
        "Wwwwwwwwwwwwwwwwwww",
        "Ljava/util/Map;",
        "tags",
        "Wwwwwwwwwwwwwwwwww",
        "Z",
        "allowConversionToBitmap",
        "Wwwwwwwwwwwwwwwww",
        "Ljava/lang/Boolean;",
        "allowHardware",
        "Wwwwwwwwwwwwwwww",
        "allowRgb565",
        "Wwwwwwwwwwwwwww",
        "premultipliedAlpha",
        "Wwwwwwwwwwwwww",
        "Lcoil/request/CachePolicy;",
        "memoryCachePolicy",
        "Wwwwwwwwwwwww",
        "diskCachePolicy",
        "Wwwwwwwwwwww",
        "networkCachePolicy",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Wwwwwwwwwww",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "interceptorDispatcher",
        "Wwwwwwwwww",
        "fetcherDispatcher",
        "Wwwwwwwww",
        "decoderDispatcher",
        "Wwwwwwww",
        "transformationDispatcher",
        "Lcoil/request/Parameters$Builder;",
        "Wwwwwww",
        "Lcoil/request/Parameters$Builder;",
        "parameters",
        "Wwwwww",
        "placeholderMemoryCacheKey",
        "Wwwww",
        "Ljava/lang/Integer;",
        "placeholderResId",
        "Landroid/graphics/drawable/Drawable;",
        "Wwww",
        "Landroid/graphics/drawable/Drawable;",
        "placeholderDrawable",
        "Www",
        "errorResId",
        "Kkkkkkkkkkkkkkkkkkkkkkkkkk",
        "errorDrawable",
        "Kkkkkkkkkkkkkkkkkkkkkkkkk",
        "fallbackResId",
        "Kkkkkkkkkkkkkkkkkkkkkkkk",
        "fallbackDrawable",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "Lcoil/size/SizeResolver;",
        "sizeResolver",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "Lcoil/size/Scale;",
        "scale",
        "Kkkkkkkkkkkkkkkkkkkk",
        "resolvedLifecycle",
        "Kkkkkkkkkkkkkkkkkkk",
        "resolvedSizeResolver",
        "Kkkkkkkkkkkkkkkkkk",
        "resolvedScale",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public Kkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Www:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwww:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwww:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwww:Lcoil/memory/MemoryCache$Key;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwww:Lcoil/request/Parameters$Builder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwww:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwww:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwww:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwww:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers$Builder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "+",
            "Lcoil/fetch/Fetcher$Factory<",
            "*>;+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcoil/util/-Requests;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/DefaultRequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 6
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 7
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 8
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 11
    :cond_0
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 12
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 13
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 16
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers$Builder;

    .line 17
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwww:Z

    .line 19
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 20
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 21
    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwww:Z

    .line 22
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 23
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 24
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 25
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 26
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 27
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwww:Lcoil/request/Parameters$Builder;

    .line 30
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwww:Lcoil/memory/MemoryCache$Key;

    .line 31
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwww:Ljava/lang/Integer;

    .line 32
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwww:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Www:Ljava/lang/Integer;

    .line 34
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 36
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 38
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 39
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    .line 40
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 41
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 42
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    return-void
.end method

.method public constructor <init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V
    .locals 2
    .param p1    # Lcoil/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwww()Lcoil/request/DefaultRequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 46
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk()Lcoil/target/Target;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 48
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwww()Lcoil/request/ImageRequest$Listener;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 49
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwww()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 50
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwww()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Precision;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 54
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwww()Lkotlin/Pair;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 55
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwww()Lcoil/decode/Decoder$Factory;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 56
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkk()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwww()Lcoil/transition/Transition$Factory;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 58
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwww()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers$Builder;

    .line 59
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkk()Lcoil/request/Tags;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/Tags;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 60
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwww:Z

    .line 61
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwww:Z

    .line 64
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 65
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 66
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 67
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 68
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 69
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 70
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 71
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwww()Lcoil/request/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/Parameters;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/Parameters$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwww:Lcoil/request/Parameters$Builder;

    .line 72
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkkk()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwww:Lcoil/memory/MemoryCache$Key;

    .line 73
    invoke-static {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwww:Ljava/lang/Integer;

    .line 74
    invoke-static {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwww:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-static {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Www:Ljava/lang/Integer;

    .line 76
    invoke-static {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-static {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 78
    invoke-static {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 80
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwww()Lcoil/size/SizeResolver;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 81
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Scale;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    .line 82
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 83
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Wwwwwwwww()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 84
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkk()Lcoil/size/SizeResolver;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 85
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk()Lcoil/size/Scale;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 87
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 88
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwww(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .param p1    # Lcoil/size/SizeResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .param p1    # Lcoil/size/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcoil/size/SizeResolvers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Lcoil/size/SizeResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwww(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(II)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcoil/size/-Sizes;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(II)Lcoil/size/Size;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/SizeResolver;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil/target/ViewTarget;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    check-cast v0, Lcoil/target/ViewTarget;

    .line 8
    .line 9
    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 25
    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    :cond_0
    sget-object v0, Lcoil/size/Size;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Size;

    .line 33
    .line 34
    invoke-static {v0}, Lcoil/size/SizeResolvers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Lcoil/size/SizeResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    const/4 v1, 0x2

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v3, v1, v2}, Lcoil/size/ViewSizeResolvers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_2
    new-instance v0, Lcoil/size/DisplaySizeResolver;

    .line 48
    .line 49
    iget-object v1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcoil/size/DisplaySizeResolver;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Scale;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil/size/ViewSizeResolver;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcoil/size/ViewSizeResolver;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v2, v0

    .line 22
    goto :goto_3

    .line 23
    :cond_2
    :goto_1
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 24
    .line 25
    instance-of v1, v0, Lcoil/target/ViewTarget;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    check-cast v0, Lcoil/target/ViewTarget;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    move-object v0, v2

    .line 33
    :goto_2
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_4
    :goto_3
    instance-of v0, v2, Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    check-cast v2, Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-static {v2}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwww(Landroid/widget/ImageView;)Lcoil/size/Scale;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_5
    sget-object v0, Lcoil/size/Scale;->FIT:Lcoil/size/Scale;

    .line 51
    .line 52
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil/target/ViewTarget;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcoil/target/ViewTarget;

    .line 8
    .line 9
    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 19
    .line 20
    :goto_0
    invoke-static {v0}, Lcoil/util/-Contexts;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/lifecycle/Lifecycle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Lcoil/request/GlobalLifecycle;->INSTANCE:Lcoil/request/GlobalLifecycle;

    .line 27
    .line 28
    :cond_1
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 3
    .line 4
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 5
    .line 6
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    .line 3
    .line 4
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .param p1    # Lcoil/request/CachePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .param p1    # Lcoil/request/DefaultRequestOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;
    .locals 55
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    .line 10
    .line 11
    :cond_0
    move-object v3, v1

    .line 12
    iget-object v4, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 13
    .line 14
    iget-object v5, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 15
    .line 16
    iget-object v6, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 17
    .line 18
    iget-object v7, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    move-object v8, v1

    .line 31
    iget-object v9, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 32
    .line 33
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Precision;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2
    move-object v10, v1

    .line 44
    iget-object v11, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 45
    .line 46
    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 47
    .line 48
    iget-object v13, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 49
    .line 50
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwww()Lcoil/transition/Transition$Factory;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_3
    move-object v14, v1

    .line 61
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers$Builder;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-static {v1}, Lcoil/util/-Utils;->Wwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v15, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 76
    .line 77
    move-object/from16 v17, v1

    .line 78
    .line 79
    if-eqz v15, :cond_5

    .line 80
    .line 81
    sget-object v1, Lcoil/request/Tags;->Companion:Lcoil/request/Tags$Companion;

    .line 82
    .line 83
    invoke-virtual {v1, v15}, Lcoil/request/Tags$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Lcoil/request/Tags;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const/4 v1, 0x0

    .line 89
    :goto_1
    invoke-static {v1}, Lcoil/util/-Utils;->Wwwwwwwwwww(Lcoil/request/Tags;)Lcoil/request/Tags;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-boolean v15, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwww:Z

    .line 94
    .line 95
    move-object/from16 v18, v1

    .line 96
    .line 97
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    :goto_2
    move/from16 v19, v1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    goto :goto_2

    .line 115
    :goto_3
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    :goto_4
    move/from16 v20, v1

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_7
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    goto :goto_4

    .line 133
    :goto_5
    iget-boolean v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwww:Z

    .line 134
    .line 135
    move/from16 v21, v1

    .line 136
    .line 137
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 138
    .line 139
    if-nez v1, :cond_8

    .line 140
    .line 141
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :cond_8
    move-object/from16 v22, v1

    .line 148
    .line 149
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 150
    .line 151
    if-nez v1, :cond_9

    .line 152
    .line 153
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :cond_9
    move-object/from16 v23, v1

    .line 160
    .line 161
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 162
    .line 163
    if-nez v1, :cond_a

    .line 164
    .line 165
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :cond_a
    move-object/from16 v24, v1

    .line 172
    .line 173
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 174
    .line 175
    if-nez v1, :cond_b

    .line 176
    .line 177
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    :cond_b
    move-object/from16 v25, v1

    .line 184
    .line 185
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 186
    .line 187
    if-nez v1, :cond_c

    .line 188
    .line 189
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 190
    .line 191
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :cond_c
    move-object/from16 v26, v1

    .line 196
    .line 197
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 198
    .line 199
    if-nez v1, :cond_d

    .line 200
    .line 201
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 202
    .line 203
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    :cond_d
    move-object/from16 v27, v1

    .line 208
    .line 209
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 210
    .line 211
    if-nez v1, :cond_e

    .line 212
    .line 213
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :cond_e
    move-object/from16 v28, v1

    .line 220
    .line 221
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 222
    .line 223
    if-nez v1, :cond_f

    .line 224
    .line 225
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 226
    .line 227
    if-nez v1, :cond_f

    .line 228
    .line 229
    invoke-virtual {v0}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroidx/lifecycle/Lifecycle;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    :cond_f
    move-object/from16 v29, v1

    .line 234
    .line 235
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 236
    .line 237
    if-nez v1, :cond_10

    .line 238
    .line 239
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 240
    .line 241
    if-nez v1, :cond_10

    .line 242
    .line 243
    invoke-virtual {v0}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/SizeResolver;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    :cond_10
    move-object/from16 v30, v1

    .line 248
    .line 249
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    .line 250
    .line 251
    if-nez v1, :cond_11

    .line 252
    .line 253
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    .line 254
    .line 255
    if-nez v1, :cond_11

    .line 256
    .line 257
    invoke-virtual {v0}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Scale;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    :cond_11
    move-object/from16 v31, v1

    .line 262
    .line 263
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwww:Lcoil/request/Parameters$Builder;

    .line 264
    .line 265
    if-eqz v1, :cond_12

    .line 266
    .line 267
    invoke-virtual {v1}, Lcoil/request/Parameters$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/Parameters;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    move-object/from16 v16, v1

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_12
    const/16 v16, 0x0

    .line 275
    .line 276
    :goto_6
    invoke-static/range {v16 .. v16}, Lcoil/util/-Utils;->Wwwwwwwwwwww(Lcoil/request/Parameters;)Lcoil/request/Parameters;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    move-object/from16 v16, v1

    .line 281
    .line 282
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwww:Lcoil/memory/MemoryCache$Key;

    .line 283
    .line 284
    move-object/from16 v32, v1

    .line 285
    .line 286
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwww:Ljava/lang/Integer;

    .line 287
    .line 288
    move-object/from16 v33, v1

    .line 289
    .line 290
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwww:Landroid/graphics/drawable/Drawable;

    .line 291
    .line 292
    move-object/from16 v34, v1

    .line 293
    .line 294
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Www:Ljava/lang/Integer;

    .line 295
    .line 296
    move-object/from16 v35, v1

    .line 297
    .line 298
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 299
    .line 300
    move-object/from16 v36, v1

    .line 301
    .line 302
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 303
    .line 304
    move-object/from16 v37, v1

    .line 305
    .line 306
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 307
    .line 308
    new-instance v38, Lcoil/request/DefinedRequestOptions;

    .line 309
    .line 310
    move-object/from16 v54, v1

    .line 311
    .line 312
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkkk:Landroidx/lifecycle/Lifecycle;

    .line 313
    .line 314
    move-object/from16 v39, v1

    .line 315
    .line 316
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkkk:Lcoil/size/SizeResolver;

    .line 317
    .line 318
    move-object/from16 v40, v1

    .line 319
    .line 320
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/size/Scale;

    .line 321
    .line 322
    move-object/from16 v41, v1

    .line 323
    .line 324
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 325
    .line 326
    move-object/from16 v42, v1

    .line 327
    .line 328
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 329
    .line 330
    move-object/from16 v43, v1

    .line 331
    .line 332
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 333
    .line 334
    move-object/from16 v44, v1

    .line 335
    .line 336
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 337
    .line 338
    move-object/from16 v45, v1

    .line 339
    .line 340
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 341
    .line 342
    move-object/from16 v46, v1

    .line 343
    .line 344
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 345
    .line 346
    move-object/from16 v47, v1

    .line 347
    .line 348
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 349
    .line 350
    move-object/from16 v48, v1

    .line 351
    .line 352
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 353
    .line 354
    move-object/from16 v49, v1

    .line 355
    .line 356
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 357
    .line 358
    move-object/from16 v50, v1

    .line 359
    .line 360
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 361
    .line 362
    move-object/from16 v51, v1

    .line 363
    .line 364
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 365
    .line 366
    move-object/from16 v52, v1

    .line 367
    .line 368
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 369
    .line 370
    move-object/from16 v53, v1

    .line 371
    .line 372
    invoke-direct/range {v38 .. v53}, Lcoil/request/DefinedRequestOptions;-><init>(Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition$Factory;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 376
    .line 377
    move-object/from16 v40, v1

    .line 378
    .line 379
    new-instance v1, Lcoil/request/ImageRequest;

    .line 380
    .line 381
    const/16 v41, 0x0

    .line 382
    .line 383
    move-object/from16 v39, v17

    .line 384
    .line 385
    move/from16 v17, v15

    .line 386
    .line 387
    move-object/from16 v15, v39

    .line 388
    .line 389
    move-object/from16 v39, v31

    .line 390
    .line 391
    move-object/from16 v31, v16

    .line 392
    .line 393
    move-object/from16 v16, v18

    .line 394
    .line 395
    move/from16 v18, v19

    .line 396
    .line 397
    move/from16 v19, v20

    .line 398
    .line 399
    move/from16 v20, v21

    .line 400
    .line 401
    move-object/from16 v21, v22

    .line 402
    .line 403
    move-object/from16 v22, v23

    .line 404
    .line 405
    move-object/from16 v23, v24

    .line 406
    .line 407
    move-object/from16 v24, v25

    .line 408
    .line 409
    move-object/from16 v25, v26

    .line 410
    .line 411
    move-object/from16 v26, v27

    .line 412
    .line 413
    move-object/from16 v27, v28

    .line 414
    .line 415
    move-object/from16 v28, v29

    .line 416
    .line 417
    move-object/from16 v29, v30

    .line 418
    .line 419
    move-object/from16 v30, v39

    .line 420
    .line 421
    move-object/from16 v39, v38

    .line 422
    .line 423
    move-object/from16 v38, v54

    .line 424
    .line 425
    invoke-direct/range {v1 .. v41}, Lcoil/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Precision;Lkotlin/Pair;Lcoil/decode/Decoder$Factory;Ljava/util/List;Lcoil/transition/Transition$Factory;Lokhttp3/Headers;Lcoil/request/Tags;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lcoil/request/Parameters;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 426
    .line 427
    .line 428
    return-object v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lcoil/request/ImageRequest$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method
