.class public abstract Lcom/facebook/ads/redexgen/X/1i;
.super Lcom/facebook/ads/redexgen/X/BD;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/0Y;,
        Lcom/facebook/ads/redexgen/X/1j;,
        Lcom/facebook/ads/redexgen/X/BG;,
        Lcom/facebook/ads/redexgen/X/kE;,
        Lcom/facebook/ads/redexgen/X/0I;,
        Lcom/facebook/ads/redexgen/X/0X;,
        Lcom/facebook/ads/redexgen/X/1l;,
        Lcom/facebook/ads/redexgen/X/1k;,
        Lcom/facebook/ads/redexgen/X/BE;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;,
        Lcom/facebook/ads/redexgen/X/kH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/BD<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A02:[B = null

.field public static A03:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field public transient A00:I

.field public transient A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 62
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8r4g5TVHuPTTEnOtjBSYLe2NoPZev3PL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZANRIcgacCs2MrGdQFs4BnSQ4f0OwMHM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "INAFHP4NB26l7mhFzzAYwDEUO08LdW1T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "w9HTcMerj5Ucor1CBa36675WVQ4LimP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S0p05mXNQ0J7ss"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bhB1flpiQfpMN0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TPylgZWOdIZWygeLq1OgLn1DVzZt4taa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Gp6xvn2xjKoLwUaOKBIxtDMJneYJVeH8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1i;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1i;->A08()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 8832
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BD;-><init>()V

    .line 8833
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jA;->A0C(Z)V

    .line 8834
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    .line 8835
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1i;)I
    .locals 2

    .line 8836
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1i;)I
    .locals 2

    .line 8837
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    return v1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/1i;I)I
    .locals 1

    .line 8838
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    return v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1i;I)I
    .locals 1

    .line 8839
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    return v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1i;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 8840
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8841
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 8842
    :goto_0
    return-object v0

    .line 8843
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic A06(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 0

    .line 8844
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1i;->A05(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/1i;)Ljava/util/Map;
    .locals 0

    .line 8845
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    return-object p0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1i;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x13t
        0x1t
        0x56t
        0x35t
        0x19t
        0x1at
        0x1at
        0x13t
        0x15t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x56t
        0x0t
        0x1ft
        0x19t
        0x1at
        0x17t
        0x2t
        0x13t
        0x12t
        0x56t
        0x2t
        0x1et
        0x13t
        0x56t
        0x35t
        0x19t
        0x1at
        0x1at
        0x13t
        0x15t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x56t
        0x5t
        0x6t
        0x13t
        0x15t
    .end array-data
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/1i;Ljava/lang/Object;)V
    .locals 0

    .line 8846
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1i;->A0A(Ljava/lang/Object;)V

    return-void
.end method

.method private A0A(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 8847
    .local p1, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/nz;->A06(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 8848
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .line 8849
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 8850
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 8851
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    .line 8852
    .end local v1    # "count":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0B()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 8853
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/kK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/kK;-><init>(Lcom/facebook/ads/redexgen/X/BD;)V

    return-object v0
.end method

.method public A0C()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 8854
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/BH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/BH;-><init>(Lcom/facebook/ads/redexgen/X/1i;)V

    return-object v0
.end method

.method public abstract A0D()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public A0E(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 8855
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1i;->A0D()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract A0G(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final A0H(Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/kH;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "list",
            "ancestor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/facebook/ads/redexgen/X/1i<",
            "TK;TV;>.WrappedCollection;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 8856
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p3, "ancestor":Lcom/facebook/ads/redexgen/X/kH;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 8857
    new-instance v0, Lcom/facebook/ads/redexgen/X/1k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1k;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/kH;)V

    .line 8858
    :goto_0
    return-object v0

    .line 8859
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/kH;)V

    goto :goto_0
.end method

.method public A0I()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 8860
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    return-object v0
.end method

.method public final A0J()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 8861
    .local v2, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    .line 8862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0Y;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/0Y;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/util/NavigableMap;)V

    return-object v0

    .line 8863
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    instance-of v3, v0, Ljava/util/SortedMap;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1i;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1i;->A03:[Ljava/lang/String;

    const-string v1, "NCYt1eTwLWbpcysHbDqNMrCxO6pYN55"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 8864
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1j;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1j;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/util/SortedMap;)V

    return-object v0

    .line 8865
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    new-instance v0, Lcom/facebook/ads/redexgen/X/BG;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/BG;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/util/Map;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0K()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 8866
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    .line 8867
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0I;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/0I;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/util/NavigableMap;)V

    return-object v0

    .line 8868
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 8869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0X;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/0X;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/util/SortedMap;)V

    return-object v0

    .line 8870
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1l;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1l;-><init>(Lcom/facebook/ads/redexgen/X/1i;Ljava/util/Map;)V

    return-object v0
.end method

.method public final A0L(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 8871
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    .line 8872
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    .line 8873
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 8874
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jA;->A0C(Z)V

    .line 8875
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    .line 8876
    .end local v1    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    goto :goto_0

    .line 8877
    :cond_0
    return-void
.end method

.method public AGU(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 8878
    .local v3, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local v4, "key":Ljava/lang/Object;, "TK;"
    .local p0, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 8879
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 8880
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/1i;->A0E(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 8881
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8882
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    .line 8883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8884
    return v4

    .line 8885
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1i;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 8886
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8887
    iget v3, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    add-int/2addr v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1i;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1i;->A03:[Ljava/lang/String;

    const-string v1, "qdqPg3EJJL9zSp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JvkYzNNxKsGyOY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    .line 8888
    return v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8889
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 8890
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 8891
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 8892
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    goto :goto_0

    .line 8893
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8894
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    .line 8895
    return-void
.end method

.method public size()I
    .locals 1

    .line 8896
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 8897
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1i;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BD;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
