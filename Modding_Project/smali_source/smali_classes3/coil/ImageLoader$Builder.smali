.class public final Lcoil/ImageLoader$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\rR \u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R \u0010\u0016\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0012R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0012R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcoil/ImageLoader$Builder;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcoil/ImageLoader;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/ImageLoader;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
        "applicationContext",
        "Lcoil/request/DefaultRequestOptions;",
        "Lcoil/request/DefaultRequestOptions;",
        "defaults",
        "Lkotlin/Lazy;",
        "Lcoil/memory/MemoryCache;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lkotlin/Lazy;",
        "memoryCache",
        "Lcoil/disk/DiskCache;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "diskCache",
        "Lokhttp3/Call$Factory;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "callFactory",
        "Lcoil/EventListener$Factory;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/EventListener$Factory;",
        "eventListenerFactory",
        "Lcoil/ComponentRegistry;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/ComponentRegistry;",
        "componentRegistry",
        "Lcoil/util/ImageLoaderOptions;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/util/ImageLoaderOptions;",
        "options",
        "Lcoil/util/Logger;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/util/Logger;",
        "logger",
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
.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/Logger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/ImageLoaderOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/ComponentRegistry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "+",
            "Lcoil/disk/DiskCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "+",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation

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
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {}, Lcoil/util/-Requests;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/DefaultRequestOptions;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 18
    .line 19
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 20
    .line 21
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 22
    .line 23
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/EventListener$Factory;

    .line 24
    .line 25
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/ComponentRegistry;

    .line 26
    .line 27
    new-instance v0, Lcoil/util/ImageLoaderOptions;

    .line 28
    .line 29
    const/16 v6, 0x1f

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-direct/range {v0 .. v7}, Lcoil/util/ImageLoaderOptions;-><init>(ZZZILcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/ImageLoaderOptions;

    .line 41
    .line 42
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/Logger;

    .line 43
    .line 44
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/ImageLoader$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/ImageLoader;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil/RealImageLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/DefaultRequestOptions;

    .line 6
    .line 7
    iget-object v3, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Lcoil/ImageLoader$Builder$build$1;

    .line 12
    .line 13
    invoke-direct {v3, p0}, Lcoil/ImageLoader$Builder$build$1;-><init>(Lcoil/ImageLoader$Builder;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_0
    iget-object v4, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    new-instance v4, Lcoil/ImageLoader$Builder$build$2;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcoil/ImageLoader$Builder$build$2;-><init>(Lcoil/ImageLoader$Builder;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_1
    iget-object v5, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/Lazy;

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    sget-object v5, Lcoil/ImageLoader$Builder$build$3;->INSTANCE:Lcoil/ImageLoader$Builder$build$3;

    .line 38
    .line 39
    invoke-static {v5}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    :cond_2
    iget-object v6, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/EventListener$Factory;

    .line 44
    .line 45
    if-nez v6, :cond_3

    .line 46
    .line 47
    sget-object v6, Lcoil/EventListener$Factory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/EventListener$Factory;

    .line 48
    .line 49
    :cond_3
    iget-object v7, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/ComponentRegistry;

    .line 50
    .line 51
    if-nez v7, :cond_4

    .line 52
    .line 53
    new-instance v7, Lcoil/ComponentRegistry;

    .line 54
    .line 55
    invoke-direct {v7}, Lcoil/ComponentRegistry;-><init>()V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object v8, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/ImageLoaderOptions;

    .line 59
    .line 60
    iget-object v9, p0, Lcoil/ImageLoader$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/util/Logger;

    .line 61
    .line 62
    invoke-direct/range {v0 .. v9}, Lcoil/RealImageLoader;-><init>(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;Lcoil/util/ImageLoaderOptions;Lcoil/util/Logger;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
