.class public abstract Lcom/facebook/ads/redexgen/X/Am;
.super Lcom/facebook/ads/redexgen/X/ma;
.source ""

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1h;,
        Lcom/google/common/collect/ImmutableList$SerializedForm;,
        Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,
        Lcom/facebook/ads/redexgen/X/1g;,
        Lcom/facebook/ads/redexgen/X/0W;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/ma<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static A00:[B = null

.field public static A01:[Ljava/lang/String; = null

.field public static final A02:Lcom/facebook/ads/redexgen/X/AF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/AF<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J = -0x35014542L


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 605
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fHdUBkHaeOb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RyMA6PTlrDF2m99nGPMPg2CjhSKVyaSQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ENegzNvFlexY3BR2RKk1z4PrLej5P8FF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wggVriGK93MfFtYQABEEs6Hvem71Ew8R"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ul6RrA3f2JvHqPW8xA7h0PXskLz1uboQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Eo8bayYlVcx2q99x4ketqZKtcr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wTUtZUDKElMjm9Nu5uZgljoHw4l"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Am;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A0B()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A02:Lcom/facebook/ads/redexgen/X/Am;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/0W;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0W;-><init>(Lcom/facebook/ads/redexgen/X/Am;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Am;->A02:Lcom/facebook/ads/redexgen/X/AF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29863
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ma;-><init>()V

    return-void
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/1h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/1h<",
            "TE;>;"
        }
    .end annotation

    .line 29864
    new-instance v0, Lcom/facebook/ads/redexgen/X/1h;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1h;-><init>()V

    return-object v0
.end method

.method private final A02(II)Lcom/facebook/ads/redexgen/X/1g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29865
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    sub-int/2addr p2, p1

    new-instance v0, Lcom/facebook/ads/redexgen/X/1g;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1g;-><init>(Lcom/facebook/ads/redexgen/X/Am;II)V

    return-object v0
.end method

.method public static A03()Lcom/facebook/ads/redexgen/X/Am;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29866
    sget-object v0, Lcom/facebook/ads/redexgen/X/1b;->A02:Lcom/facebook/ads/redexgen/X/Am;

    return-object v0
.end method

.method public static A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29867
    .local p0, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Am;->A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29868
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/ma;

    if-eqz v0, :cond_1

    .line 29869
    check-cast p0, Lcom/facebook/ads/redexgen/X/ma;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ma;->A0J()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object p0

    .line 29870
    .local v0, "list":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ma;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ma;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A06([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object p0

    :cond_0
    return-object p0

    .line 29871
    .end local v0    # "list":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method public static A06([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29872
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Am;->A09([Ljava/lang/Object;I)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method public static A07([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29873
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    if-nez v0, :cond_0

    .line 29874
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    .line 29875
    :goto_0
    return-object v0

    .line 29876
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29877
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oR;->A03([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Am;->A06([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object p0

    return-object p0
.end method

.method public static A09([Ljava/lang/Object;I)Lcom/facebook/ads/redexgen/X/Am;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29878
    if-nez p1, :cond_0

    .line 29879
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0

    .line 29880
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/1b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/1b;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Am;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A01:[Ljava/lang/String;

    const-string v1, "b9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Am;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        0x5et
        0x48t
        0xdt
        0x7et
        0x48t
        0x5ft
        0x44t
        0x4ct
        0x41t
        0x44t
        0x57t
        0x48t
        0x49t
        0x6bt
        0x42t
        0x5ft
        0x40t
    .end array-data
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 29916
    .local v2, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A0I([Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 29881
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v3

    .line 29882
    .local v0, "size":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 29883
    add-int v1, p2, v2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Am;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    .line 29884
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29885
    .end local v1    # "i":I
    :cond_0
    add-int/2addr p2, v3

    return p2
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/Am;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29886
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    return-object p0
.end method

.method public A0M(II)Lcom/facebook/ads/redexgen/X/Am;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 29887
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/jA;->A0B(III)V

    .line 29888
    sub-int v1, p2, p1

    .line 29889
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 29890
    return-object p0

    .line 29891
    :cond_0
    if-nez v1, :cond_1

    .line 29892
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0

    .line 29893
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Am;->A02(II)Lcom/facebook/ads/redexgen/X/1g;

    move-result-object v0

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/pg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/pg<",
            "TE;>;"
        }
    .end annotation

    .line 29894
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->A0O()Lcom/facebook/ads/redexgen/X/AF;

    move-result-object v0

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/AF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/AF<",
            "TE;>;"
        }
    .end annotation

    .line 29895
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Am;->A0P(I)Lcom/facebook/ads/redexgen/X/AF;

    move-result-object v0

    return-object v0
.end method

.method public A0P(I)Lcom/facebook/ads/redexgen/X/AF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/ads/redexgen/X/AF<",
            "TE;>;"
        }
    .end annotation

    .line 29896
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/jA;->A01(II)I

    .line 29897
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29898
    sget-object v0, Lcom/facebook/ads/redexgen/X/Am;->A02:Lcom/facebook/ads/redexgen/X/AF;

    return-object v0

    .line 29899
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/0W;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/0W;-><init>(Lcom/facebook/ads/redexgen/X/Am;I)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29900
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "newElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29901
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 29902
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Am;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 29903
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/ng;->A06(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 29904
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    const/4 v0, 0x1

    .line 29905
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v3

    .line 29906
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 29907
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Am;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 29908
    .end local v0    # "hashCode":I
    .local v3, "hashCode":I
    not-int v0, v1

    not-int v0, v0

    .line 29909
    .end local v3    # "hashCode":I
    .restart local v0    # "hashCode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29910
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 29911
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/ng;->A00(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 29912
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->A0N()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 29913
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/ng;->A01(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 29914
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Am;->A0O()Lcom/facebook/ads/redexgen/X/AF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 29915
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Am;->A0P(I)Lcom/facebook/ads/redexgen/X/AF;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29917
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29918
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 29919
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Am;->A0M(II)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method
