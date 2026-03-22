.class public final Lcom/facebook/ads/redexgen/X/lr;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/lv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3137
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ttZbCw840LiCmMMagoH7x1ccnhXQbEM1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MpxecthRuEJqGUuoNQ5A37YBhHZeOVcm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F5DHcgT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zg8RxjbDPuahNU47bDpYXJZcrKLRzeUW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lK8l2vp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Hs2vTdzQZwjFS6KGav0LYTLDhx5JGetB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dmVTdLfQWkJOIA8zEGmBV6szkdy3co89"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IVYzXJf67D23TQo71K1DHnZqVzwcGU9Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lr;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lv;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97338
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lr;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 97339
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lr;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->clear()V

    .line 97340
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 97341
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lr;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97342
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 97343
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 97344
    :cond_0
    instance-of v4, p1, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lr;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/lr;->A01:[Ljava/lang/String;

    const-string v1, "ECwcYxYjSLCNiUqu2ExsZmnTntzmdq50"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 97345
    check-cast p1, Ljava/util/Map$Entry;

    .line 97346
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A06(Lcom/facebook/ads/redexgen/X/lv;Ljava/lang/Object;)I

    move-result v1

    .line 97347
    .local v3, "index":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/lv;->A0I(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 97348
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "index":I
    :cond_3
    return v3
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 97349
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lr;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 97350
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lr;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97351
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 97352
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 97353
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 97354
    check-cast p1, Ljava/util/Map$Entry;

    .line 97355
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97356
    return v2

    .line 97357
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A05(Lcom/facebook/ads/redexgen/X/lv;)I

    move-result v5

    .line 97358
    .local v3, "mask":I
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 97359
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    .line 97360
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0G(Lcom/facebook/ads/redexgen/X/lv;)Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    .line 97361
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0U(Lcom/facebook/ads/redexgen/X/lv;)[I

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    .line 97362
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0X(Lcom/facebook/ads/redexgen/X/lv;)[Ljava/lang/Object;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    .line 97363
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0Y(Lcom/facebook/ads/redexgen/X/lv;)[Ljava/lang/Object;

    move-result-object v9

    .line 97364
    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/ly;->A06(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 97365
    .local v4, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 97366
    return v2

    .line 97367
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/lv;->A0n(II)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/lr;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_3

    .line 97368
    sget-object v2, Lcom/facebook/ads/redexgen/X/lr;->A01:[Ljava/lang/String;

    const-string v1, "padFRdr7QgkeMqaUt5IwgmGjkWqeexUC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lv;->A04(Lcom/facebook/ads/redexgen/X/lv;)I

    .line 97369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0j()V

    .line 97370
    const/4 v0, 0x1

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97371
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "mask":I
    .end local v4    # "index":I
    :cond_4
    return v2
.end method

.method public final size()I
    .locals 1

    .line 97372
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lr;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lr;->A00:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->size()I

    move-result v0

    return v0
.end method
