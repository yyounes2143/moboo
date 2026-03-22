.class public final Lcom/facebook/ads/redexgen/X/l7;
.super Lcom/facebook/ads/redexgen/X/HI;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:[J

.field public A02:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3098
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hpDJt5h1KEOoxvwsMFQNYPr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VSvt5SXm5usvlgrWoNvpXkXh8Dq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BGFNPpHl8d5ErpIW7AfimlhS91R1U6wd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7dPt9qHZlpxHIlw3mPQ6xbLk1XOmee"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "V5zubMgZbVWtRFu8X"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "n5IVAqV2SnF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Sg4r6ty2QhZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l7;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/l7;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95906
    new-instance v0, Lcom/facebook/ads/redexgen/X/lO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lO;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HI;-><init>(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 95907
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/l7;->A00:J

    .line 95908
    const/4 v1, 0x0

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l7;->A02:[J

    .line 95909
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l7;->A01:[J

    .line 95910
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 0

    .line 95911
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result p0

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/Boolean;
    .locals 1

    .line 95912
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/Double;
    .locals 1

    .line 95913
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0P()J

    move-result-wide v0

    invoke-static {v0, p0}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, p0}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4J;I)Ljava/lang/Object;
    .locals 0

    .line 95914
    packed-switch p1, :pswitch_data_0

    .line 95915
    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 95916
    :pswitch_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A07(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 95917
    :pswitch_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A06(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 95918
    :pswitch_3
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A08(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 95919
    :pswitch_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A09(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 95920
    :pswitch_5
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A05(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95921
    :pswitch_6
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A01(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 95922
    :pswitch_7
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A02(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/l7;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;
    .locals 4

    .line 95923
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v3

    .line 95924
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v2

    .line 95925
    .local v1, "position":I
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 95926
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95927
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v3

    .line 95928
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 95929
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 95930
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v0

    .line 95931
    .local v3, "type":I
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/l7;->A03(Lcom/facebook/ads/redexgen/X/4J;I)Ljava/lang/Object;

    move-result-object v0

    .line 95932
    .local p0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 95933
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95934
    .end local v3    # "type":I
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95935
    .end local v2    # "i":I
    :cond_1
    return-object v2
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/Date;
    .locals 4

    .line 95936
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A02(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-long v2, v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 95937
    .local v0, "date":Ljava/util/Date;
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 95938
    return-object v1
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95939
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v4

    .line 95940
    .local v0, "count":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 95941
    .local v1, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 95942
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A05(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;

    move-result-object v1

    .line 95943
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v0

    .line 95944
    .local v4, "type":I
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/l7;->A03(Lcom/facebook/ads/redexgen/X/4J;I)Ljava/lang/Object;

    move-result-object v0

    .line 95945
    .local p0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 95946
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95947
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":I
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95948
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95949
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 95950
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A05(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;

    move-result-object v2

    .line 95951
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/l7;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v1

    .line 95952
    .local v2, "type":I
    const/16 v0, 0x9

    if-ne v1, v0, :cond_1

    .line 95953
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    return-object v3

    .line 95954
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_1
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/l7;->A03(Lcom/facebook/ads/redexgen/X/4J;I)Ljava/lang/Object;

    move-result-object v0

    .line 95955
    .local v3, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 95956
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/l7;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x27t
        -0x16t
        -0x19t
        -0x2at
        -0x17t
        -0x22t
        -0x1ct
        -0x1dt
        -0x2bt
        -0x28t
        -0x25t
        -0x2ct
        -0x21t
        -0x22t
        -0x1et
        -0x28t
        -0x1dt
        -0x28t
        -0x22t
        -0x23t
        -0x1et
        -0x20t
        -0x26t
        -0x12t
        -0x25t
        -0x19t
        -0x2at
        -0x1et
        -0x26t
        -0x18t
        -0x19t
        -0x1at
        -0x3bt
        -0x23t
        -0x14t
        -0x27t
        -0x44t
        -0x27t
        -0x14t
        -0x27t
        0x23t
        0x18t
        0x1ct
        0x14t
        0x22t
    .end array-data
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 1

    .line 95957
    const/4 v0, 0x1

    return v0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4J;J)Z
    .locals 11

    .line 95958
    move-object v3, p0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/l7;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v1

    .line 95959
    .local v1, "nameType":I
    const/4 v0, 0x2

    const/4 v8, 0x0

    if-eq v1, v0, :cond_0

    .line 95960
    return v8

    .line 95961
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/l7;->A05(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;

    move-result-object v7

    .line 95962
    .local v2, "name":Ljava/lang/String;
    const/16 v6, 0x1e

    const/16 v5, 0xa

    const/16 v4, 0x1c

    sget-object v1, Lcom/facebook/ads/redexgen/X/l7;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/l7;->A04:[Ljava/lang/String;

    const-string v1, "yhTvZHDsLiRhvHdxFLG6a7MHjxNmCRFd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/l7;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95963
    return v8

    .line 95964
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-nez v0, :cond_2

    .line 95965
    return v8

    .line 95966
    :cond_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/l7;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v1

    .line 95967
    .local v4, "type":I
    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    .line 95968
    return v8

    .line 95969
    :cond_3
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/l7;->A08(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/HashMap;

    move-result-object v8

    .line 95970
    .local v5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l7;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 95971
    .local v6, "durationSecondsObj":Ljava/lang/Object;
    instance-of v0, v1, Ljava/lang/Double;

    const-wide v6, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_4

    .line 95972
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 95973
    .local v10, "durationSeconds":D
    const-wide/16 v1, 0x0

    cmpl-double v0, v4, v1

    if-lez v0, :cond_4

    .line 95974
    mul-double/2addr v4, v6

    double-to-long v0, v4

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/l7;->A00:J

    .line 95975
    .end local v10    # "durationSeconds":D
    :cond_4
    const/16 v2, 0x15

    const/16 v1, 0x9

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l7;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 95976
    .local v7, "keyFramesObj":Ljava/lang/Object;
    instance-of v0, v4, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 95977
    check-cast v4, Ljava/util/Map;

    .line 95978
    .local v10, "keyFrames":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/16 v2, 0x8

    const/16 v1, 0xd

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l7;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 95979
    .local p0, "positionsObj":Ljava/lang/Object;
    const/16 v2, 0x28

    const/4 v1, 0x5

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l7;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 95980
    .local p1, "timesSecondsObj":Ljava/lang/Object;
    instance-of v0, v8, Ljava/util/List;

    if-eqz v0, :cond_7

    instance-of v0, v7, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 95981
    check-cast v8, Ljava/util/List;

    .line 95982
    .local p2, "positions":Ljava/util/List;, "Ljava/util/List<*>;"
    check-cast v7, Ljava/util/List;

    .line 95983
    .local p3, "timesSeconds":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 95984
    .local p4, "keyFrameCount":I
    new-array v4, v6, [J

    sget-object v1, Lcom/facebook/ads/redexgen/X/l7;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/l7;->A04:[Ljava/lang/String;

    const-string v1, "ycK0oDKd1FWGh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/l7;->A02:[J

    .line 95985
    new-array v0, v6, [J

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/l7;->A01:[J

    .line 95986
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v6, :cond_7

    .line 95987
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 95988
    .local v8, "positionObj":Ljava/lang/Object;
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 95989
    .local v9, "timeSecondsObj":Ljava/lang/Object;
    .end local v1    # "nameType":I
    .local p7, "nameType":I
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    instance-of v0, v10, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 95990
    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/l7;->A02:[J

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v0, 0x412e848000000000L    # 1000000.0

    .end local v4    # "type":I
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p10, "type":I
    .local p11, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    mul-double/2addr v4, v0

    double-to-long v0, v4

    aput-wide v0, v9, v2

    .line 95991
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/l7;->A01:[J

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v2

    .line 95992
    .end local v8    # "positionObj":Ljava/lang/Object;
    .end local v9    # "timeSecondsObj":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/l7;->A04:[Ljava/lang/String;

    const-string v1, "l8UzOy1g7iACMRm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/l7;->A02:[J

    .line 95993
    new-array v0, v6, [J

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/l7;->A01:[J

    .line 95994
    const/4 v2, 0x0

    goto :goto_0

    .line 95995
    .end local p10
    .end local p11
    .restart local v4    # "type":I
    .restart local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "positionObj":Ljava/lang/Object;
    .restart local v9    # "timeSecondsObj":Ljava/lang/Object;
    .end local v4    # "type":I
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p10
    .restart local p11
    :cond_6
    const/4 v1, 0x0

    new-array v0, v1, [J

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/l7;->A02:[J

    .line 95996
    new-array v0, v1, [J

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/l7;->A01:[J

    .line 95997
    .end local v1
    .end local v4
    .end local v5
    .restart local p7
    .restart local p10
    .restart local p11
    :cond_7
    const/4 v0, 0x0

    return v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D()J
    .locals 2

    .line 95998
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/l7;->A00:J

    return-wide v0
.end method

.method public final A0E()[J
    .locals 1

    .line 95999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l7;->A01:[J

    return-object v0
.end method

.method public final A0F()[J
    .locals 1

    .line 96000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l7;->A02:[J

    return-object v0
.end method
