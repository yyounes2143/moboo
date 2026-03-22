.class public abstract Lcom/facebook/ads/redexgen/X/ls;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/lv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lv;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97373
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ls;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A03(Lcom/facebook/ads/redexgen/X/lv;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A01:I

    .line 97375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0a()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    .line 97376
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A02:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/lv;Lcom/facebook/ads/redexgen/X/B9;)V
    .locals 0

    .line 97377
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ls;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ls;-><init>(Lcom/facebook/ads/redexgen/X/lv;)V

    return-void
.end method

.method private A01()V
    .locals 2

    .line 97378
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ls;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A03(Lcom/facebook/ads/redexgen/X/lv;)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A01:I

    if-ne v1, v0, :cond_0

    .line 97379
    return-void

    .line 97380
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private final A02()V
    .locals 1

    .line 97381
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ls;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A01:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A01:I

    .line 97382
    return-void
.end method


# virtual methods
.method public abstract A03(I)Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 1

    .line 97383
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ls;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97384
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ls;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ls;->A01()V

    .line 97385
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ls;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A02:I

    .line 97387
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ls;->A03(I)Ljava/lang/Object;

    move-result-object v2

    .line 97388
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0b(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    .line 97389
    return-object v2

    .line 97390
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 97391
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ls;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ls;->A01()V

    .line 97392
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A02:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ll;->A04(Z)V

    .line 97393
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ls;->A02()V

    .line 97394
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A02:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0H(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/lv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97395
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ls;->A03:Lcom/facebook/ads/redexgen/X/lv;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A02:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0c(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A00:I

    .line 97396
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ls;->A02:I

    .line 97397
    return-void

    .line 97398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
