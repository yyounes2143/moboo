.class public Lcom/facebook/ads/redexgen/X/dL;
.super Lcom/facebook/ads/redexgen/X/SQ;
.source ""


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/facebook/ads/internal/context/Repairable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/SO;

.field public final A03:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/SN;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/LH;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2623
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Fl94EIzOk67aYUPduHJ8UazEL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sAhktSZOOrm35xxj8Imdq8RPkj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oRYwVa3KjTvntAfrBK1sqTqE8vcnrhu1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DAigVkrFkMuOUy14T2FK5zmWgvJcIn3a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "an5oIaHMQLp81wCZBnKMJTBSx7KtQFJf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wEWpxEoKGSO43ttKCSegU3t35jPnkl3s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WpWdxAQuBweGThqHfmbUTgqTG7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dWX8I2VlCkDjmK6jHvJYkvPP690yaesv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dL;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V
    .locals 1

    .line 79242
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/SQ;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)V

    .line 79243
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    .line 79244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79246
    new-instance v0, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/SO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A02:Lcom/facebook/ads/redexgen/X/SO;

    .line 79247
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79249
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A00:Ljava/lang/ref/WeakReference;

    .line 79250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V
    .locals 2

    .line 79251
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/SQ;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)V

    .line 79252
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    .line 79253
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79254
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79255
    new-instance v0, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/SO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A02:Lcom/facebook/ads/redexgen/X/SO;

    .line 79256
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79258
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/dL;->A00(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 79259
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 79260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A00:Ljava/lang/ref/WeakReference;

    .line 79261
    :goto_0
    return-void

    .line 79262
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A00:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static A00(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 79263
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 79264
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 79265
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 79266
    :cond_0
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/dL;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/dL;

    .line 79267
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79268
    check-cast p0, Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 79269
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 79270
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final A0E()Landroid/app/Activity;
    .locals 1

    .line 79271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public A0F()Lcom/facebook/ads/redexgen/X/LH;
    .locals 1

    .line 79272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LH;

    .line 79273
    .local v0, "funnel":Lcom/facebook/ads/redexgen/X/LH;
    if-nez v0, :cond_0

    .line 79274
    new-instance v0, Lcom/facebook/ads/redexgen/X/j3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/j3;-><init>()V

    .line 79275
    :cond_0
    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/SN;
    .locals 1

    .line 79276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/SN;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/SO;
    .locals 1

    .line 79277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A02:Lcom/facebook/ads/redexgen/X/SO;

    return-object v0
.end method

.method public final A0I()Ljava/lang/Object;
    .locals 1

    .line 79278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0J(Landroid/app/Activity;)V
    .locals 1

    .line 79279
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A00:Ljava/lang/ref/WeakReference;

    .line 79280
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/LH;)V
    .locals 1

    .line 79281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79282
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 2

    .line 79283
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 79284
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    .line 79285
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 79286
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/dL;->A0K(Lcom/facebook/ads/redexgen/X/LH;)V

    .line 79287
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0D(Ljava/lang/String;)V

    .line 79288
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dL;->A0G()Lcom/facebook/ads/redexgen/X/SN;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/dL;->A0N(Lcom/facebook/ads/redexgen/X/SN;)V

    .line 79289
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/SN;)V
    .locals 1

    .line 79290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79291
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/internal/context/Repairable;)V
    .locals 2

    .line 79292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79293
    return-void
.end method

.method public final A0P(Ljava/lang/Object;)V
    .locals 1

    .line 79294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79295
    return-void
.end method

.method public final A0Q(Ljava/lang/Throwable;)V
    .locals 5

    .line 79296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dL;->A01:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/dL;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/dL;->A06:[Ljava/lang/String;

    const-string v1, "cq4W2mN05Su2gaFDi5CYFjM7nJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "g7MgkZWMqMCaiMVBRzNoHUUy7c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79297
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/context/Repairable;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/context/Repairable;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/context/Repairable;->repair(Ljava/lang/Throwable;)V

    .line 79298
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/context/Repairable;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 79299
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
