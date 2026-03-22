.class public final Lcoil/request/ImageRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/request/ImageRequest$Listener;,
        Lcoil/request/ImageRequest$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008j\u0018\u00002\u00020\u0001:\u0004\u00af\u0001\u00b0\u0001B\u00f7\u0002\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u001c\u0010\u0016\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0015\u0018\u00010\u0013\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010$\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010&\u001a\u00020\"\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010)\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020\'\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010-\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020+\u0012\u0006\u0010/\u001a\u00020+\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u00105\u001a\u000204\u0012\u0006\u00107\u001a\u000206\u0012\u0008\u00108\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010:\u001a\u0004\u0018\u000109\u0012\u0008\u0010<\u001a\u0004\u0018\u00010;\u0012\u0008\u0010=\u001a\u0004\u0018\u000109\u0012\u0008\u0010>\u001a\u0004\u0018\u00010;\u0012\u0008\u0010?\u001a\u0004\u0018\u000109\u0012\u0008\u0010@\u001a\u0004\u0018\u00010;\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010H\u001a\u00020G2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008H\u0010IJ\u001a\u0010K\u001a\u00020\"2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008M\u0010NR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR\u0017\u0010\u0004\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010VR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010ZR\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010bR\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010fR\u0017\u0010\u000e\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010jR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010nR\u0017\u0010\u0012\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010rR-\u0010\u0016\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0015\u0018\u00010\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008i\u0010s\u001a\u0004\u0008t\u0010uR\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008m\u0010v\u001a\u0004\u0008w\u0010xR\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008Q\u0010y\u001a\u0004\u0008z\u0010{R\u0017\u0010\u001d\u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008U\u0010|\u001a\u0004\u0008}\u0010~R\u001a\u0010\u001f\u001a\u00020\u001e8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001a\u0010!\u001a\u00020 8\u0006\u00a2\u0006\u000f\n\u0005\u0008w\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001a\u0010#\u001a\u00020\"8\u0006\u00a2\u0006\u000f\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0005\u0008g\u0010\u0088\u0001R\u001a\u0010$\u001a\u00020\"8\u0006\u00a2\u0006\u000f\n\u0006\u0008\u0089\u0001\u0010\u0087\u0001\u001a\u0005\u0008k\u0010\u0088\u0001R\u0019\u0010%\u001a\u00020\"8\u0006\u00a2\u0006\u000e\n\u0005\u0008e\u0010\u0087\u0001\u001a\u0005\u0008o\u0010\u0088\u0001R\u001b\u0010&\u001a\u00020\"8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u008a\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u008b\u0001\u0010\u0088\u0001R\u001b\u0010(\u001a\u00020\'8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u001b\u0010)\u001a\u00020\'8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0001\u0010\u008d\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008f\u0001R\u001b\u0010*\u001a\u00020\'8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0091\u0001\u0010\u008d\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u008f\u0001R\u001a\u0010,\u001a\u00020+8\u0006\u00a2\u0006\u000f\n\u0005\u0008t\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u001b\u0010-\u001a\u00020+8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0081\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0091\u0001\u0010\u0095\u0001R\u001a\u0010.\u001a\u00020+8\u0006\u00a2\u0006\u000f\n\u0006\u0008\u0094\u0001\u0010\u0093\u0001\u001a\u0005\u0008\u007f\u0010\u0095\u0001R\u001b\u0010/\u001a\u00020+8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0096\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0095\u0001R\u001a\u00101\u001a\u0002008\u0006\u00a2\u0006\u000f\n\u0005\u0008]\u0010\u0098\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0099\u0001R\u001a\u00103\u001a\u0002028\u0006\u00a2\u0006\u000f\n\u0005\u0008a\u0010\u009a\u0001\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u001b\u00105\u001a\u0002048\u0006\u00a2\u0006\u0010\n\u0006\u0008\u008e\u0001\u0010\u009d\u0001\u001a\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u001b\u00107\u001a\u0002068\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0092\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R\u001b\u00108\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a1\u0001\u0010`\u001a\u0005\u0008\u00a3\u0001\u0010bR\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a6\u0001R\u0017\u0010=\u001a\u0004\u0018\u0001098\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008q\u0010\u00a5\u0001R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u00a6\u0001R\u0018\u0010?\u001a\u0004\u0018\u0001098\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u00a5\u0001R\u0018\u0010@\u001a\u0004\u0018\u00010;8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u00a6\u0001R\u001b\u0010B\u001a\u00020A8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0084\u0001\u0010\u00a7\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u00a8\u0001R\u001a\u0010D\u001a\u00020C8\u0006\u00a2\u0006\u000f\n\u0005\u0008Y\u0010\u00a9\u0001\u001a\u0006\u0008\u0086\u0001\u0010\u00aa\u0001R\u0016\u0010\u00ac\u0001\u001a\u0004\u0018\u00010;8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a4\u0001\u0010\u00ab\u0001R\u0016\u0010\u00ad\u0001\u001a\u0004\u0018\u00010;8F\u00a2\u0006\u0008\u001a\u0006\u0008\u008c\u0001\u0010\u00ab\u0001R\u0016\u0010\u00ae\u0001\u001a\u0004\u0018\u00010;8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0090\u0001\u0010\u00ab\u0001\u00a8\u0006\u00b1\u0001"
    }
    d2 = {
        "Lcoil/request/ImageRequest;",
        "",
        "Landroid/content/Context;",
        "context",
        "data",
        "Lcoil/target/Target;",
        "target",
        "Lcoil/request/ImageRequest$Listener;",
        "listener",
        "Lcoil/memory/MemoryCache$Key;",
        "memoryCacheKey",
        "",
        "diskCacheKey",
        "Landroid/graphics/Bitmap$Config;",
        "bitmapConfig",
        "Landroid/graphics/ColorSpace;",
        "colorSpace",
        "Lcoil/size/Precision;",
        "precision",
        "Lkotlin/Pair;",
        "Lcoil/fetch/Fetcher$Factory;",
        "Ljava/lang/Class;",
        "fetcherFactory",
        "Lcoil/decode/Decoder$Factory;",
        "decoderFactory",
        "",
        "Lcoil/transform/Transformation;",
        "transformations",
        "Lcoil/transition/Transition$Factory;",
        "transitionFactory",
        "Lokhttp3/Headers;",
        "headers",
        "Lcoil/request/Tags;",
        "tags",
        "",
        "allowConversionToBitmap",
        "allowHardware",
        "allowRgb565",
        "premultipliedAlpha",
        "Lcoil/request/CachePolicy;",
        "memoryCachePolicy",
        "diskCachePolicy",
        "networkCachePolicy",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "interceptorDispatcher",
        "fetcherDispatcher",
        "decoderDispatcher",
        "transformationDispatcher",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Lcoil/size/SizeResolver;",
        "sizeResolver",
        "Lcoil/size/Scale;",
        "scale",
        "Lcoil/request/Parameters;",
        "parameters",
        "placeholderMemoryCacheKey",
        "",
        "placeholderResId",
        "Landroid/graphics/drawable/Drawable;",
        "placeholderDrawable",
        "errorResId",
        "errorDrawable",
        "fallbackResId",
        "fallbackDrawable",
        "Lcoil/request/DefinedRequestOptions;",
        "defined",
        "Lcoil/request/DefaultRequestOptions;",
        "defaults",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Precision;Lkotlin/Pair;Lcoil/decode/Decoder$Factory;Ljava/util/List;Lcoil/transition/Transition$Factory;Lokhttp3/Headers;Lcoil/request/Tags;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lcoil/request/Parameters;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;)V",
        "Lcoil/request/ImageRequest$Builder;",
        "Kkkkkkkkkkkkkkkk",
        "(Landroid/content/Context;)Lcoil/request/ImageRequest$Builder;",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "()I",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/content/Context;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/Object;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/lang/Object;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/target/Target;",
        "Kkkkkkkkkkkkkkkkkkkk",
        "()Lcoil/target/Target;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/request/ImageRequest$Listener;",
        "Wwwwwwww",
        "()Lcoil/request/ImageRequest$Listener;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/memory/MemoryCache$Key;",
        "Wwwwwww",
        "()Lcoil/memory/MemoryCache$Key;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwww",
        "()Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/graphics/Bitmap$Config;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/graphics/Bitmap$Config;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/graphics/ColorSpace;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/graphics/ColorSpace;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/size/Precision;",
        "Kkkkkkkkkkkkkkkkkkkkkkkkk",
        "()Lcoil/size/Precision;",
        "Lkotlin/Pair;",
        "Wwwwwwwwwwww",
        "()Lkotlin/Pair;",
        "Lcoil/decode/Decoder$Factory;",
        "Wwwwwwwwwwwwwwwwwwww",
        "()Lcoil/decode/Decoder$Factory;",
        "Ljava/util/List;",
        "Kkkkkkkkkkkkkkkkkk",
        "()Ljava/util/List;",
        "Lcoil/transition/Transition$Factory;",
        "Kkkkkkkkkkkkkkkkk",
        "()Lcoil/transition/Transition$Factory;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Lokhttp3/Headers;",
        "Wwwwwwwwwww",
        "()Lokhttp3/Headers;",
        "Lcoil/request/Tags;",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "()Lcoil/request/Tags;",
        "Wwwwwwwwwwwwwwwwwww",
        "Z",
        "()Z",
        "Wwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwww",
        "Lcoil/request/CachePolicy;",
        "Wwwwww",
        "()Lcoil/request/CachePolicy;",
        "Wwwwwwwwwwwwww",
        "Wwwwwwwwwwwww",
        "Wwwww",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Wwwwwwwwww",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "Wwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkk",
        "Landroidx/lifecycle/Lifecycle;",
        "()Landroidx/lifecycle/Lifecycle;",
        "Lcoil/size/SizeResolver;",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "()Lcoil/size/SizeResolver;",
        "Lcoil/size/Scale;",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "()Lcoil/size/Scale;",
        "Lcoil/request/Parameters;",
        "Wwww",
        "()Lcoil/request/Parameters;",
        "Kkkkkkkkkkkkkkkkkkkkkkkkkk",
        "Www",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        "Lcoil/request/DefinedRequestOptions;",
        "()Lcoil/request/DefinedRequestOptions;",
        "Lcoil/request/DefaultRequestOptions;",
        "()Lcoil/request/DefaultRequestOptions;",
        "()Landroid/graphics/drawable/Drawable;",
        "placeholder",
        "error",
        "fallback",
        "Builder",
        "Listener",
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
.field public final Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Kkkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefinedRequestOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Kkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Kkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Www:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwww:Lcoil/memory/MemoryCache$Key;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwww:Lcoil/request/Parameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwww:Lcoil/size/Scale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwww:Lcoil/size/SizeResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwww:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwww:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwww:Lcoil/request/CachePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwww:Lcoil/request/Tags;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/transform/Transformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcoil/fetch/Fetcher$Factory<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Precision;Lkotlin/Pair;Lcoil/decode/Decoder$Factory;Ljava/util/List;Lcoil/transition/Transition$Factory;Lokhttp3/Headers;Lcoil/request/Tags;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lcoil/request/Parameters;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lcoil/target/Target;",
            "Lcoil/request/ImageRequest$Listener;",
            "Lcoil/memory/MemoryCache$Key;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/ColorSpace;",
            "Lcoil/size/Precision;",
            "Lkotlin/Pair<",
            "+",
            "Lcoil/fetch/Fetcher$Factory<",
            "*>;+",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lcoil/decode/Decoder$Factory;",
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;",
            "Lcoil/transition/Transition$Factory;",
            "Lokhttp3/Headers;",
            "Lcoil/request/Tags;",
            "ZZZZ",
            "Lcoil/request/CachePolicy;",
            "Lcoil/request/CachePolicy;",
            "Lcoil/request/CachePolicy;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcoil/size/SizeResolver;",
            "Lcoil/size/Scale;",
            "Lcoil/request/Parameters;",
            "Lcoil/memory/MemoryCache$Key;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcoil/request/DefinedRequestOptions;",
            "Lcoil/request/DefaultRequestOptions;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 6
    iput-object p4, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 7
    iput-object p5, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 8
    iput-object p6, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 10
    iput-object p8, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 11
    iput-object p9, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 12
    iput-object p10, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 13
    iput-object p11, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 14
    iput-object p12, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 15
    iput-object p13, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 16
    iput-object p14, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;

    .line 17
    iput-object p15, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwww:Lcoil/request/Tags;

    move/from16 p1, p16

    .line 18
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwww:Z

    move/from16 p1, p17

    .line 19
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww:Z

    move/from16 p1, p18

    .line 20
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwww:Z

    move/from16 p1, p19

    .line 21
    iput-boolean p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwww:Z

    move-object/from16 p1, p20

    .line 22
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    move-object/from16 p1, p21

    .line 23
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    move-object/from16 p1, p22

    .line 24
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    move-object/from16 p1, p23

    .line 25
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 p1, p24

    .line 26
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 p1, p25

    .line 27
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 p1, p26

    .line 28
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 p1, p27

    .line 29
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwww:Landroidx/lifecycle/Lifecycle;

    move-object/from16 p1, p28

    .line 30
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwww:Lcoil/size/SizeResolver;

    move-object/from16 p1, p29

    .line 31
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwwww:Lcoil/size/Scale;

    move-object/from16 p1, p30

    .line 32
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwwww:Lcoil/request/Parameters;

    move-object/from16 p1, p31

    .line 33
    iput-object p1, p0, Lcoil/request/ImageRequest;->Wwww:Lcoil/memory/MemoryCache$Key;

    move-object/from16 p1, p32

    .line 34
    iput-object p1, p0, Lcoil/request/ImageRequest;->Www:Ljava/lang/Integer;

    move-object/from16 p1, p33

    .line 35
    iput-object p1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    move-object/from16 p1, p34

    .line 36
    iput-object p1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    move-object/from16 p1, p35

    .line 37
    iput-object p1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    move-object/from16 p1, p36

    .line 38
    iput-object p1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    move-object/from16 p1, p37

    .line 39
    iput-object p1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    move-object/from16 p1, p38

    .line 40
    iput-object p1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefinedRequestOptions;

    move-object/from16 p1, p39

    .line 41
    iput-object p1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Precision;Lkotlin/Pair;Lcoil/decode/Decoder$Factory;Ljava/util/List;Lcoil/transition/Transition$Factory;Lokhttp3/Headers;Lcoil/request/Tags;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lcoil/request/Parameters;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p39}, Lcoil/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Precision;Lkotlin/Pair;Lcoil/decode/Decoder$Factory;Ljava/util/List;Lcoil/transition/Transition$Factory;Lokhttp3/Headers;Lcoil/request/Tags;ZZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lcoil/request/Parameters;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;)V

    return-void
.end method

.method public static synthetic Kkkkkkkkkkkkkkk(Lcoil/request/ImageRequest;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkk(Landroid/content/Context;)Lcoil/request/ImageRequest$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/request/ImageRequest;->Www:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkk(Landroid/content/Context;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil/request/ImageRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcoil/request/ImageRequest$Builder;-><init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkk()Lcoil/transition/Transition$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcoil/transform/Transformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkk()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkk()Lcoil/target/Target;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkk()Lcoil/request/Tags;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwww:Lcoil/request/Tags;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk()Lcoil/size/SizeResolver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwww:Lcoil/size/SizeResolver;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk()Lcoil/size/Scale;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwww:Lcoil/size/Scale;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkk()Lcoil/size/Precision;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkkk()Lcoil/memory/MemoryCache$Key;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwww:Lcoil/memory/MemoryCache$Key;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Www()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/request/ImageRequest;->Www:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p0, v0, v1, v2}, Lcoil/util/-Requests;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final Wwww()Lcoil/request/Parameters;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwww:Lcoil/request/Parameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwww()Lcoil/request/CachePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwww()Lcoil/request/CachePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwww()Lcoil/memory/MemoryCache$Key;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwww()Lcoil/request/ImageRequest$Listener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwww()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwww()Lokhttp3/Headers;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwww()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcoil/fetch/Fetcher$Factory<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p0, v0, v1, v2}, Lcoil/util/-Requests;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcoil/request/DefaultRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p0, v0, v1, v2}, Lcoil/util/-Requests;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwww()Lcoil/request/CachePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwww()Lcoil/request/DefinedRequestOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefinedRequestOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwww()Lcoil/request/DefaultRequestOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwww()Lcoil/decode/Decoder$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/ColorSpace;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcoil/request/ImageRequest;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 10
    .line 11
    check-cast p1, Lcoil/request/ImageRequest;

    .line 12
    .line 13
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 32
    .line 33
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 42
    .line 43
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 52
    .line 53
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 72
    .line 73
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 74
    .line 75
    if-ne v1, v2, :cond_2

    .line 76
    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v2, 0x1a

    .line 80
    .line 81
    if-lt v1, v2, :cond_1

    .line 82
    .line 83
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 84
    .line 85
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 86
    .line 87
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    :cond_1
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 94
    .line 95
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 96
    .line 97
    if-ne v1, v2, :cond_2

    .line 98
    .line 99
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 100
    .line 101
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 102
    .line 103
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 110
    .line 111
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 112
    .line 113
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 120
    .line 121
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    .line 129
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 130
    .line 131
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 132
    .line 133
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;

    .line 140
    .line 141
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;

    .line 142
    .line 143
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwww:Lcoil/request/Tags;

    .line 150
    .line 151
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwww:Lcoil/request/Tags;

    .line 152
    .line 153
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    .line 159
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwww:Z

    .line 160
    .line 161
    iget-boolean v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwww:Z

    .line 162
    .line 163
    if-ne v1, v2, :cond_2

    .line 164
    .line 165
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww:Z

    .line 166
    .line 167
    iget-boolean v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww:Z

    .line 168
    .line 169
    if-ne v1, v2, :cond_2

    .line 170
    .line 171
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwww:Z

    .line 172
    .line 173
    iget-boolean v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwww:Z

    .line 174
    .line 175
    if-ne v1, v2, :cond_2

    .line 176
    .line 177
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwww:Z

    .line 178
    .line 179
    iget-boolean v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwww:Z

    .line 180
    .line 181
    if-ne v1, v2, :cond_2

    .line 182
    .line 183
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 184
    .line 185
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 186
    .line 187
    if-ne v1, v2, :cond_2

    .line 188
    .line 189
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 190
    .line 191
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 192
    .line 193
    if-ne v1, v2, :cond_2

    .line 194
    .line 195
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 196
    .line 197
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 198
    .line 199
    if-ne v1, v2, :cond_2

    .line 200
    .line 201
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 202
    .line 203
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 204
    .line 205
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_2

    .line 210
    .line 211
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 212
    .line 213
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 214
    .line 215
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_2

    .line 220
    .line 221
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 222
    .line 223
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 224
    .line 225
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_2

    .line 230
    .line 231
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 232
    .line 233
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 234
    .line 235
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_2

    .line 240
    .line 241
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwww:Lcoil/memory/MemoryCache$Key;

    .line 242
    .line 243
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwww:Lcoil/memory/MemoryCache$Key;

    .line 244
    .line 245
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_2

    .line 250
    .line 251
    iget-object v1, p0, Lcoil/request/ImageRequest;->Www:Ljava/lang/Integer;

    .line 252
    .line 253
    iget-object v2, p1, Lcoil/request/ImageRequest;->Www:Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_2

    .line 260
    .line 261
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 262
    .line 263
    iget-object v2, p1, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 264
    .line 265
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_2

    .line 270
    .line 271
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 272
    .line 273
    iget-object v2, p1, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 274
    .line 275
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_2

    .line 280
    .line 281
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 282
    .line 283
    iget-object v2, p1, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_2

    .line 290
    .line 291
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 292
    .line 293
    iget-object v2, p1, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_2

    .line 300
    .line 301
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 302
    .line 303
    iget-object v2, p1, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 304
    .line 305
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_2

    .line 310
    .line 311
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 312
    .line 313
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 314
    .line 315
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_2

    .line 320
    .line 321
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwww:Lcoil/size/SizeResolver;

    .line 322
    .line 323
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwwww:Lcoil/size/SizeResolver;

    .line 324
    .line 325
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_2

    .line 330
    .line 331
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwww:Lcoil/size/Scale;

    .line 332
    .line 333
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwwww:Lcoil/size/Scale;

    .line 334
    .line 335
    if-ne v1, v2, :cond_2

    .line 336
    .line 337
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwww:Lcoil/request/Parameters;

    .line 338
    .line 339
    iget-object v2, p1, Lcoil/request/ImageRequest;->Wwwww:Lcoil/request/Parameters;

    .line 340
    .line 341
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_2

    .line 346
    .line 347
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefinedRequestOptions;

    .line 348
    .line 349
    iget-object v2, p1, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefinedRequestOptions;

    .line 350
    .line 351
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_2

    .line 356
    .line 357
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    .line 358
    .line 359
    iget-object p1, p1, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    .line 360
    .line 361
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-eqz p1, :cond_2

    .line 366
    .line 367
    return v0

    .line 368
    :cond_2
    const/4 p1, 0x0

    .line 369
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/target/Target;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageRequest$Listener;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v2

    .line 42
    :goto_1
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/memory/MemoryCache$Key;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v1, v2

    .line 55
    :goto_2
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v1, v2

    .line 68
    :goto_3
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Bitmap$Config;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/ColorSpace;

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move v1, v2

    .line 90
    :goto_4
    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    .line 93
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/size/Precision;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    .line 101
    .line 102
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Pair;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    move v1, v2

    .line 112
    :goto_5
    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    .line 115
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcoil/decode/Decoder$Factory;

    .line 116
    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    move v1, v2

    .line 125
    :goto_6
    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    .line 127
    .line 128
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    .line 136
    .line 137
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/Transition$Factory;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    .line 145
    .line 146
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;

    .line 147
    .line 148
    invoke-virtual {v1}, Lokhttp3/Headers;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-int/2addr v0, v1

    .line 153
    mul-int/lit8 v0, v0, 0x1f

    .line 154
    .line 155
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwwww:Lcoil/request/Tags;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcoil/request/Tags;->hashCode()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    .line 163
    .line 164
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwwww:Z

    .line 165
    .line 166
    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/adid/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/2addr v0, v1

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    .line 172
    .line 173
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwwww:Z

    .line 174
    .line 175
    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/adid/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    .line 182
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwwww:Z

    .line 183
    .line 184
    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/adid/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/2addr v0, v1

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    .line 190
    .line 191
    iget-boolean v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwwww:Z

    .line 192
    .line 193
    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/adid/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    add-int/2addr v0, v1

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    .line 199
    .line 200
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    add-int/2addr v0, v1

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    add-int/2addr v0, v1

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    .line 217
    .line 218
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwwww:Lcoil/request/CachePolicy;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    add-int/2addr v0, v1

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    .line 226
    .line 227
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    add-int/2addr v0, v1

    .line 234
    mul-int/lit8 v0, v0, 0x1f

    .line 235
    .line 236
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    add-int/2addr v0, v1

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    .line 244
    .line 245
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    add-int/2addr v0, v1

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    .line 253
    .line 254
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    add-int/2addr v0, v1

    .line 261
    mul-int/lit8 v0, v0, 0x1f

    .line 262
    .line 263
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    add-int/2addr v0, v1

    .line 270
    mul-int/lit8 v0, v0, 0x1f

    .line 271
    .line 272
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwwww:Lcoil/size/SizeResolver;

    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    add-int/2addr v0, v1

    .line 279
    mul-int/lit8 v0, v0, 0x1f

    .line 280
    .line 281
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwwww:Lcoil/size/Scale;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    add-int/2addr v0, v1

    .line 288
    mul-int/lit8 v0, v0, 0x1f

    .line 289
    .line 290
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwwww:Lcoil/request/Parameters;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcoil/request/Parameters;->hashCode()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    add-int/2addr v0, v1

    .line 297
    mul-int/lit8 v0, v0, 0x1f

    .line 298
    .line 299
    iget-object v1, p0, Lcoil/request/ImageRequest;->Wwww:Lcoil/memory/MemoryCache$Key;

    .line 300
    .line 301
    if-eqz v1, :cond_7

    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    goto :goto_7

    .line 308
    :cond_7
    move v1, v2

    .line 309
    :goto_7
    add-int/2addr v0, v1

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    .line 311
    .line 312
    iget-object v1, p0, Lcoil/request/ImageRequest;->Www:Ljava/lang/Integer;

    .line 313
    .line 314
    if-eqz v1, :cond_8

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    goto :goto_8

    .line 321
    :cond_8
    move v1, v2

    .line 322
    :goto_8
    add-int/2addr v0, v1

    .line 323
    mul-int/lit8 v0, v0, 0x1f

    .line 324
    .line 325
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 326
    .line 327
    if-eqz v1, :cond_9

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    goto :goto_9

    .line 334
    :cond_9
    move v1, v2

    .line 335
    :goto_9
    add-int/2addr v0, v1

    .line 336
    mul-int/lit8 v0, v0, 0x1f

    .line 337
    .line 338
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 339
    .line 340
    if-eqz v1, :cond_a

    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    goto :goto_a

    .line 347
    :cond_a
    move v1, v2

    .line 348
    :goto_a
    add-int/2addr v0, v1

    .line 349
    mul-int/lit8 v0, v0, 0x1f

    .line 350
    .line 351
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 352
    .line 353
    if-eqz v1, :cond_b

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    goto :goto_b

    .line 360
    :cond_b
    move v1, v2

    .line 361
    :goto_b
    add-int/2addr v0, v1

    .line 362
    mul-int/lit8 v0, v0, 0x1f

    .line 363
    .line 364
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/Integer;

    .line 365
    .line 366
    if-eqz v1, :cond_c

    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    goto :goto_c

    .line 373
    :cond_c
    move v1, v2

    .line 374
    :goto_c
    add-int/2addr v0, v1

    .line 375
    mul-int/lit8 v0, v0, 0x1f

    .line 376
    .line 377
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkk:Landroid/graphics/drawable/Drawable;

    .line 378
    .line 379
    if-eqz v1, :cond_d

    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    :cond_d
    add-int/2addr v0, v2

    .line 386
    mul-int/lit8 v0, v0, 0x1f

    .line 387
    .line 388
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefinedRequestOptions;

    .line 389
    .line 390
    invoke-virtual {v1}, Lcoil/request/DefinedRequestOptions;->hashCode()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    add-int/2addr v0, v1

    .line 395
    mul-int/lit8 v0, v0, 0x1f

    .line 396
    .line 397
    iget-object v1, p0, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkk:Lcoil/request/DefaultRequestOptions;

    .line 398
    .line 399
    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->hashCode()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    add-int/2addr v0, v1

    .line 404
    return v0
.end method
