.class public final Lcom/facebook/ads/redexgen/X/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/Ac3Reader$State;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/or;

.field public A06:Lcom/facebook/ads/redexgen/X/H1;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/4I;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3035
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zgZfEJGGgdHtew2g1FfNkkcnB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zHXWmVVfspRqZTFEHweYGYwJXvEszQMx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7abqffqd10TBp3FWdGN7VvMrN7O1UkYM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "p0MVW5l5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JyEkXe6y14TztCHpc8kpfDGRXJv0nuKA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "euIGF7oBB7KZa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ak0CBs2Ex4lMz9dSuXO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PviIixxcvW6ZcpMh0sztGl9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/k0;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/k0;-><init>(Ljava/lang/String;)V

    .line 91605
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 91606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91607
    const/16 v0, 0x80

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A09:Lcom/facebook/ads/redexgen/X/4I;

    .line 91608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A09:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 91609
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A02:I

    .line 91610
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A04:J

    .line 91611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/k0;->A0B:Ljava/lang/String;

    .line 91612
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/k0;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 91613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A09:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A09:Lcom/facebook/ads/redexgen/X/4I;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GF;->A09(Lcom/facebook/ads/redexgen/X/4I;)Lcom/facebook/ads/redexgen/X/GE;

    move-result-object v3

    .line 91615
    .local v0, "frameInfo":Lcom/facebook/ads/redexgen/X/GE;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A05:Lcom/facebook/ads/redexgen/X/or;

    if-eqz v0, :cond_0

    iget v5, v3, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A05:Lcom/facebook/ads/redexgen/X/or;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const-string v1, "s5ZnNr7Ga7MlLfd70p6uFHM8x"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "utwzV9oXgtTkd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_0

    iget v4, v3, Lcom/facebook/ads/redexgen/X/GE;->A04:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const-string v1, "MPTvnFyqCCYkwFwXTKwYW3O2KaIbPHbI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "dVnQ4greYxNN5pQgdCf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A05:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    if-ne v4, v0, :cond_0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/GE;->A06:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A05:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 91616
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91617
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A07:Ljava/lang/String;

    .line 91618
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A06:Ljava/lang/String;

    .line 91619
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    .line 91620
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A04:I

    .line 91621
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A0B:Ljava/lang/String;

    .line 91622
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    .line 91623
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0j(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v4

    .line 91624
    .local v1, "formatBuilder":Lcom/facebook/ads/redexgen/X/2D;
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/k0;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91625
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0a(I)Lcom/facebook/ads/redexgen/X/2D;

    .line 91626
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A05:Lcom/facebook/ads/redexgen/X/or;

    .line 91627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A06:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A05:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 91628
    .end local v1    # "formatBuilder":Lcom/facebook/ads/redexgen/X/2D;
    :cond_2
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A01:I

    .line 91629
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GE;->A03:I

    int-to-long v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A05:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/k0;->A03:J

    .line 91630
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/k0;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x3ct
        0x2dt
        0x20t
        0x26t
        0x66t
        0x28t
        0x2at
        0x7at
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 5

    .line 91631
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_5

    .line 91632
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/k0;->A08:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const-string v1, "9XFIg7618hJvvA4xETZzayJ4sl88kXfd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "F6kFQyxnROPq81yNs7RnOkiGPjgAvEmB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v1, 0xb

    const/4 v0, 0x1

    if-nez v3, :cond_2

    .line 91633
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/k0;->A08:Z

    .line 91634
    goto :goto_0

    .line 91635
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v3

    .line 91636
    .local v0, "secondByte":I
    const/16 v2, 0x77

    if-ne v3, v2, :cond_3

    .line 91637
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/k0;->A08:Z

    .line 91638
    return v0

    .line 91639
    :cond_3
    if-ne v3, v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/k0;->A08:Z

    .line 91640
    .end local v0    # "secondByte":I
    goto :goto_0

    .line 91641
    :cond_5
    return v4
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4J;[BI)Z
    .locals 2

    .line 91642
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 91643
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 91644
    iget v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    .line 91645
    iget v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 8

    .line 91646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A06:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91647
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_3

    .line 91648
    iget v3, p0, Lcom/facebook/ads/redexgen/X/k0;->A02:I

    const/4 v4, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/k0;->A0D:[Ljava/lang/String;

    const-string v1, "xuhMWsLm7IhyfpFjlZpQdmw9F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BOgMYXTSIypYk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 91649
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/k0;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 91650
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A06:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v1, p1, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 91651
    iget v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    .line 91652
    iget v2, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A01:I

    if-ne v2, v1, :cond_0

    .line 91653
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/k0;->A04:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 91654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A06:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/k0;->A04:J

    iget v5, p0, Lcom/facebook/ads/redexgen/X/k0;->A01:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 91655
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/k0;->A04:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A03:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/k0;->A04:J

    .line 91656
    :cond_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A02:I

    goto :goto_0

    .line 91657
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/ads/redexgen/X/k0;->A04(Lcom/facebook/ads/redexgen/X/4J;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91658
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/k0;->A01()V

    .line 91659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91660
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A06:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 91661
    iput v4, p0, Lcom/facebook/ads/redexgen/X/k0;->A02:I

    goto/16 :goto_0

    .line 91662
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/k0;->A03(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91663
    const/4 v3, 0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/k0;->A02:I

    .line 91664
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k0;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    const/16 v1, 0xb

    aput-byte v1, v2, v0

    .line 91665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v0, 0x77

    aput-byte v0, v1, v3

    .line 91666
    iput v4, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    goto/16 :goto_0

    .line 91667
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 91668
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 2

    .line 91669
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 91670
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A07:Ljava/lang/String;

    .line 91671
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A06:Lcom/facebook/ads/redexgen/X/H1;

    .line 91672
    return-void
.end method

.method public final AG5()V
    .locals 0

    .line 91673
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 91674
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 91675
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/k0;->A04:J

    .line 91676
    :cond_0
    return-void
.end method

.method public final AIL()V
    .locals 2

    .line 91677
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A02:I

    .line 91678
    iput v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A00:I

    .line 91679
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A08:Z

    .line 91680
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/k0;->A04:J

    .line 91681
    return-void
.end method
