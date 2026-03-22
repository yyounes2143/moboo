.class public final Lcom/facebook/ads/redexgen/X/IV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/IP;

.field public A05:Lcom/facebook/ads/redexgen/X/Im;

.field public final A06:Lcom/facebook/ads/redexgen/X/H1;

.field public final A07:Lcom/facebook/ads/redexgen/X/Io;

.field public final A08:Lcom/facebook/ads/redexgen/X/4J;

.field public final A09:Lcom/facebook/ads/redexgen/X/4J;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 771
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EJzHBf6C0sknf46Vq1Osr72lZWU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EzVPMe4nRAbvxSng0PXVwtyqLeoR1KIv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OkBxNGbCc3SGP6NNAhHfxcRtiUQBpmsu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1fihPQnAv3tt3xF1xxV2XjfJNe5jiXUE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EaQIZLU4UTAcxpaH6Zb3hTUPzu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nXVDjS3P8WK4na35on8K5ox1mEuGJ9Tn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "34qesDVsFPLU35m5e8V9GlfuLx1oAXXP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IwUkif7926Fg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IV;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 2

    .line 41505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41506
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IV;->A06:Lcom/facebook/ads/redexgen/X/H1;

    .line 41507
    new-instance v0, Lcom/facebook/ads/redexgen/X/Io;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Io;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    .line 41508
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A09:Lcom/facebook/ads/redexgen/X/4J;

    .line 41509
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A08:Lcom/facebook/ads/redexgen/X/4J;

    .line 41510
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/In;
    .locals 2

    .line 41511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A06:Lcom/facebook/ads/redexgen/X/IP;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/IP;->A02:I

    .line 41512
    .local v0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A07:Lcom/facebook/ads/redexgen/X/In;

    if-eqz v0, :cond_1

    .line 41513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A07:Lcom/facebook/ads/redexgen/X/In;

    .line 41514
    .local v1, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/In;->A03:Z

    if-eqz v0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 41515
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A05:Lcom/facebook/ads/redexgen/X/Im;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Im;->A00(I)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v1

    goto :goto_0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/In;
    .locals 0

    .line 41516
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IV;->A00()Lcom/facebook/ads/redexgen/X/In;

    move-result-object p0

    return-object p0
.end method

.method private A02()V
    .locals 3

    .line 41517
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IV;->A00()Lcom/facebook/ads/redexgen/X/In;

    move-result-object v1

    .line 41518
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    if-nez v1, :cond_0

    .line 41519
    return-void

    .line 41520
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Io;->A0H:Lcom/facebook/ads/redexgen/X/4J;

    .line 41521
    .local v1, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/4J;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    if-eqz v0, :cond_1

    .line 41522
    iget v0, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41523
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Io;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41524
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41525
    :cond_2
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 0

    .line 41526
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IV;->A02()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 6

    .line 41527
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IV;->A00()Lcom/facebook/ads/redexgen/X/In;

    move-result-object v1

    .line 41528
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 41529
    return v4

    .line 41530
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    if-eqz v0, :cond_2

    .line 41531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A0H:Lcom/facebook/ads/redexgen/X/4J;

    .line 41532
    .local v2, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    .line 41533
    .local v3, "vectorSize":I
    .local v2, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    .local v3, "vectorSize":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Io;->A06(I)Z

    move-result v5

    .line 41534
    .local v4, "subsampleEncryption":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A09:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    if-eqz v5, :cond_1

    const/16 v1, 0x80

    :goto_1
    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    .line 41535
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41536
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/IV;->A06:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A09:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v1, 0x1

    invoke-interface {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 41537
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A06:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 41538
    if-nez v5, :cond_4

    .line 41539
    add-int/lit8 v3, v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/IV;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IV;->A0A:[Ljava/lang/String;

    const-string v1, "cKav7mEAu9tQ2Y9RA5SJHOCCBpQ48rqR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 41540
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 41541
    .end local v2    # "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    .end local v3    # "vectorSize":I
    :cond_2
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/In;->A04:[B

    .line 41542
    .local v2, "initVectorData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A08:Lcom/facebook/ads/redexgen/X/4J;

    array-length v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 41543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A08:Lcom/facebook/ads/redexgen/X/4J;

    .line 41544
    .local v3, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    array-length v3, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41545
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Io;->A0H:Lcom/facebook/ads/redexgen/X/4J;

    .line 41546
    .local v1, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v1

    .line 41547
    .local v5, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41548
    mul-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v0, 0x2

    .line 41549
    .local p0, "subsampleDataLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A06:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 41550
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final A05()V
    .locals 1

    .line 41551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Io;->A01()V

    .line 41552
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 41553
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 41554
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:I

    .line 41555
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A03:I

    .line 41556
    return-void
.end method

.method public final A06(J)V
    .locals 4

    .line 41557
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 41558
    .local v0, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    .line 41559
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Io;->A00(I)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-gez v0, :cond_1

    .line 41560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A0G:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 41561
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IV;->A03:I

    .line 41562
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41563
    :cond_1
    return-void
.end method

.method public final A07(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)V
    .locals 4

    .line 41564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A05:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A06:Lcom/facebook/ads/redexgen/X/IP;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IP;->A02:I

    .line 41565
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Im;->A00(I)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v0

    .line 41566
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/In;->A02:Ljava/lang/String;

    .line 41567
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A06:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A05:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/or;->A09(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 41568
    return-void

    .line 41569
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Im;Lcom/facebook/ads/redexgen/X/IP;)V
    .locals 2

    .line 41570
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Im;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A05:Lcom/facebook/ads/redexgen/X/Im;

    .line 41571
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A04:Lcom/facebook/ads/redexgen/X/IP;

    .line 41572
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IV;->A06:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 41573
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IV;->A05()V

    .line 41574
    return-void
.end method

.method public final A09()Z
    .locals 4

    .line 41575
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A01:I

    .line 41576
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:I

    .line 41577
    iget v2, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A07:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A0C:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    aget v0, v1, v0

    if-ne v2, v0, :cond_0

    .line 41578
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A02:I

    .line 41579
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IV;->A00:I

    .line 41580
    return v0

    .line 41581
    :cond_0
    return v3
.end method
