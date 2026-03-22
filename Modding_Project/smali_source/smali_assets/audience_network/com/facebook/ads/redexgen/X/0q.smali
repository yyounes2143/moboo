.class public final Lcom/facebook/ads/redexgen/X/0q;
.super Lcom/facebook/ads/redexgen/X/7k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/JT;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/zip/Inflater;

.field public final A01:Lcom/facebook/ads/redexgen/X/4J;

.field public final A02:Lcom/facebook/ads/redexgen/X/4J;

.field public final A03:Lcom/facebook/ads/redexgen/X/JT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 31
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "76NlL2uX7lwdFYW1QMx5a8yy6e1HTIfb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PPHM0li7JhLOVOPCGl5v88MgokGKQYEj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LiwvhCZeMt7eMvNF2Pj8LYB8xSxq2ldh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dFyDCM0ueCIxVfSox0aflDZ7gvAI841l"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LzKPlW0IyQE1s7YXIJw5EfFPQg4N9HTr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CSOqnRNK1RYkqInl5L0si0E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7S3a0phqj2SDINZS1RTIUWP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6mBJEewaGVYJqmHVNKA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0q;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0q;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5944
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0q;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7k;-><init>(Ljava/lang/String;)V

    .line 5945
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A01:Lcom/facebook/ads/redexgen/X/4J;

    .line 5946
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A02:Lcom/facebook/ads/redexgen/X/4J;

    .line 5947
    new-instance v0, Lcom/facebook/ads/redexgen/X/JT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JT;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 5948
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/JT;)Lcom/facebook/ads/redexgen/X/o2;
    .locals 4

    .line 5949
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    .line 5950
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v3

    .line 5951
    .local v1, "sectionType":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v2

    .line 5952
    .local v2, "sectionLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    add-int/2addr v1, v2

    .line 5953
    .local v3, "nextSectionPosition":I
    if-le v1, v0, :cond_0

    .line 5954
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 5955
    const/4 v0, 0x0

    return-object v0

    .line 5956
    :cond_0
    const/4 v0, 0x0

    .line 5957
    .local p0, "cue":Lcom/facebook/ads/redexgen/X/o2;
    sparse-switch v3, :sswitch_data_0

    .line 5958
    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 5959
    return-object v0

    .line 5960
    :sswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JT;->A06()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    .line 5961
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JT;->A07()V

    .line 5962
    goto :goto_0

    .line 5963
    :sswitch_1
    invoke-static {p1, p0, v2}, Lcom/facebook/ads/redexgen/X/JT;->A05(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 5964
    goto :goto_0

    .line 5965
    :sswitch_2
    invoke-static {p1, p0, v2}, Lcom/facebook/ads/redexgen/X/JT;->A04(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 5966
    goto :goto_0

    .line 5967
    :sswitch_3
    invoke-static {p1, p0, v2}, Lcom/facebook/ads/redexgen/X/JT;->A03(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 5968
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0q;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0q;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0q;->A05:[Ljava/lang/String;

    const-string v1, "onjCODWUldEJohp5LCZVLSR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Jw3HdCuNfu1JKaBA98S5ZsK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0q;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x4ft
        -0x38t
        -0x2ct
        -0x5bt
        -0x3at
        -0x3ct
        -0x30t
        -0x3bt
        -0x3at
        -0x2dt
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 5

    .line 5969
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v1

    const/16 v0, 0x78

    if-ne v1, v0, :cond_2

    .line 5970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A00:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 5971
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A00:Ljava/util/zip/Inflater;

    .line 5972
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0q;->A02:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0q;->A00:Ljava/util/zip/Inflater;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0q;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0q;->A05:[Ljava/lang/String;

    const-string v1, "qzpsP6hj6GdiA1o5yIc6icGGxX8HbfHZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p1, v4, v3}, Lcom/facebook/ads/redexgen/X/4a;->A1D(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/4J;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A02:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A02:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 5974
    :cond_2
    return-void
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/J7;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 5976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0q;->A03(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 5977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A03:Lcom/facebook/ads/redexgen/X/JT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JT;->A07()V

    .line 5978
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5979
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0q;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0q;->A05:[Ljava/lang/String;

    const-string v1, "qQU5NmoFNSXVl5etyHU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x3

    if-lt v3, v0, :cond_2

    .line 5980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0q;->A01:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0q;->A03:Lcom/facebook/ads/redexgen/X/JT;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/0q;->A00(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/JT;)Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    .line 5981
    .local v1, "cue":Lcom/facebook/ads/redexgen/X/o2;
    if-eqz v0, :cond_0

    .line 5982
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5983
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/k9;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/k9;-><init>(Ljava/util/List;)V

    return-object v0
.end method
