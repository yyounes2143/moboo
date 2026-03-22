.class public final Lcom/facebook/ads/redexgen/X/is;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/is;


# instance fields
.field public A00:I

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2999
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NTKnPH7sxZWFtkQQ5kROJPoMkjUZ4Q4d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RaExZ6aQUY7gKyEqo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qL9TLqM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "etoa52irCH6srt3CKfgZrOFq7EubEl4q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qkXLyShprh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IdfSVJasrAewAIwCfeRk8lkXcSCS6gZu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rDp9NxZtyasBjPeaw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WSm3MQw1MgB2HgbRdvVa7F4Bk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/is;->A02:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/is;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/is;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/is;->A03:Lcom/facebook/ads/redexgen/X/is;

    .line 3000
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87018
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/is;-><init>(Ljava/util/Map;)V

    .line 87019
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 87020
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87021
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    .line 87022
    return-void
.end method

.method public static A00(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/M9;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/facebook/ads/redexgen/X/M9;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 87023
    .local p0, "otherMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 87024
    .local v0, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/M9;->A08()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/is;->A01(Ljava/util/HashMap;Ljava/util/List;)V

    .line 87025
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/M9;->A09()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/is;->A02(Ljava/util/HashMap;Ljava/util/Map;)V

    .line 87026
    return-object v1
.end method

.method public static A01(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87027
    .local p0, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 87028
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87030
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static A02(Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 87031
    .local p1, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87032
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/is;->A04(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87033
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 87034
    :cond_0
    return-void
.end method

.method public static A03(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .line 87035
    .local p0, "first":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local p1, "second":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    .line 87036
    return v5

    .line 87037
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v2, Lcom/facebook/ads/redexgen/X/is;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 87038
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/is;->A02:[Ljava/lang/String;

    const-string v1, "RxVH6UseI2QDAmyClyRrXYV4sPTOH4uG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "pwd4aQIs84j1qxbCSK6duDEgPeljesR1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 87039
    .local v3, "value":[B
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 87040
    .local v4, "otherValue":[B
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87041
    return v5

    .line 87042
    :cond_3
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/is;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/is;->A02:[Ljava/lang/String;

    const-string v1, "m75a4Dv9Ey5SlHFCv1UmHUzSVmhM8DwK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "s7eMveGG854NsBOCE3EU05ylLzSbP54K"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_4
    return v3
.end method

.method public static A04(Ljava/lang/Object;)[B
    .locals 3

    .line 87043
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 87044
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 87045
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 87046
    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 87047
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 87048
    check-cast p0, [B

    return-object p0

    .line 87049
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/M9;)Lcom/facebook/ads/redexgen/X/is;
    .locals 2

    .line 87050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/is;->A00(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/M9;)Ljava/util/Map;

    move-result-object v1

    .line 87051
    .local v0, "mutatedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/is;->A03(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87052
    return-object p0

    .line 87053
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/is;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/is;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final A06()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    .line 87054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final A6Z(Ljava/lang/String;J)J
    .locals 5

    .line 87055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 87056
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 87057
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/is;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/is;->A02:[Ljava/lang/String;

    const-string v1, "kz3tzBS2MuEJlb9Es"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "H8ViBkjAuDsfEZOZe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-wide v3

    .line 87058
    :cond_1
    return-wide p2
.end method

.method public final A6b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 87059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 87060
    .local v0, "bytes":[B
    if-eqz v2, :cond_0

    .line 87061
    sget-object v1, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 87062
    :cond_0
    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 87063
    if-ne p0, p1, :cond_0

    .line 87064
    const/4 v0, 0x1

    return v0

    .line 87065
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 87066
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 87067
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    check-cast p1, Lcom/facebook/ads/redexgen/X/is;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/is;->A03(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 87068
    iget v0, p0, Lcom/facebook/ads/redexgen/X/is;->A00:I

    if-nez v0, :cond_1

    .line 87069
    const/4 v4, 0x0

    .line 87070
    .local v0, "result":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/is;->A01:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87071
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    xor-int/2addr v1, v0

    add-int/2addr v4, v1

    .line 87072
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    goto :goto_0

    .line 87073
    :cond_0
    iput v4, p0, Lcom/facebook/ads/redexgen/X/is;->A00:I

    .line 87074
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/is;->A00:I

    return v0
.end method
