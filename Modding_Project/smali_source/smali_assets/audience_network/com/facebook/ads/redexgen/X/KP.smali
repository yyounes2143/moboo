.class public final Lcom/facebook/ads/redexgen/X/KP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceHeaderData"
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:Lcom/facebook/ads/redexgen/X/Gp;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 948
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4S0ZR9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9atY4pLS3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JCkQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0FGnuhRUJbXFjAeocMQA4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Bc2FjzyWuEwoYoDKosvue"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DSb6itpNp95G1DjaOdl5F45O"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d2IfSwPvc8yd2jGVLBTV47FBT3G8Pl4J"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SXUDcryZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KP;->A0G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/KO;)V
    .locals 0

    .line 48876
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KP;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/KP;)Z
    .locals 6

    .line 48877
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0F:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 48878
    return v5

    .line 48879
    :cond_0
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A0F:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 48880
    return v2

    .line 48881
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A09:Lcom/facebook/ads/redexgen/X/Gp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Gp;

    .line 48882
    .local v0, "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A09:Lcom/facebook/ads/redexgen/X/Gp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Gp;

    .line 48883
    .local v3, "otherSpsData":Lcom/facebook/ads/redexgen/X/Gp;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A03:I

    if-ne v1, v0, :cond_6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A07:I

    if-ne v1, v0, :cond_6

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A0C:Z

    if-ne v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0B:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A0B:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A0A:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A0A:Z

    if-ne v1, v0, :cond_6

    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A05:I

    if-eq v1, v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A05:I

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A05:I

    if-eqz v0, :cond_6

    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Gp;->A07:I

    if-nez v0, :cond_4

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gp;->A07:I

    if-nez v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A06:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A06:I

    if-ne v1, v0, :cond_6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A02:I

    if-ne v1, v0, :cond_6

    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Gp;->A07:I

    if-ne v0, v2, :cond_5

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Gp;->A07:I

    if-ne v0, v2, :cond_5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A00:I

    if-ne v1, v0, :cond_6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A01:I

    if-ne v1, v0, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A0E:Z

    if-ne v1, v0, :cond_6

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/KP;->A0E:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/KP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/KP;->A0G:[Ljava/lang/String;

    const-string v1, "vYoSPXEMP2H1rloX7Zmdh99svIQCcR37"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/KP;->A04:I

    if-eq v1, v0, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    return v5

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/KP;Lcom/facebook/ads/redexgen/X/KP;)Z
    .locals 0

    .line 48884
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KP;->A00(Lcom/facebook/ads/redexgen/X/KP;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 48885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0D:Z

    .line 48886
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0F:Z

    .line 48887
    return-void
.end method

.method public final A03(I)V
    .locals 1

    .line 48888
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KP;->A08:I

    .line 48889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0D:Z

    .line 48890
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Gp;IIIIZZZZIIIII)V
    .locals 1

    .line 48891
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KP;->A09:Lcom/facebook/ads/redexgen/X/Gp;

    .line 48892
    iput p2, p0, Lcom/facebook/ads/redexgen/X/KP;->A05:I

    .line 48893
    iput p3, p0, Lcom/facebook/ads/redexgen/X/KP;->A08:I

    .line 48894
    iput p4, p0, Lcom/facebook/ads/redexgen/X/KP;->A03:I

    .line 48895
    iput p5, p0, Lcom/facebook/ads/redexgen/X/KP;->A07:I

    .line 48896
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/KP;->A0C:Z

    .line 48897
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/KP;->A0B:Z

    .line 48898
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/KP;->A0A:Z

    .line 48899
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/KP;->A0E:Z

    .line 48900
    iput p10, p0, Lcom/facebook/ads/redexgen/X/KP;->A04:I

    .line 48901
    iput p11, p0, Lcom/facebook/ads/redexgen/X/KP;->A06:I

    .line 48902
    iput p12, p0, Lcom/facebook/ads/redexgen/X/KP;->A02:I

    .line 48903
    iput p13, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:I

    .line 48904
    iput p14, p0, Lcom/facebook/ads/redexgen/X/KP;->A01:I

    .line 48905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0F:Z

    .line 48906
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0D:Z

    .line 48907
    return-void
.end method

.method public final A05()Z
    .locals 2

    .line 48908
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A0D:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A08:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A08:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
