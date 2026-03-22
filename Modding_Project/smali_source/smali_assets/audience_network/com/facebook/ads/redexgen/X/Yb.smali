.class public final Lcom/facebook/ads/redexgen/X/Yb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Yc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/XX;

.field public A02:Lcom/facebook/ads/redexgen/X/Yf;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Yf;)V
    .locals 1

    .line 73645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0A:Z

    .line 73647
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0B:Z

    .line 73648
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:Z

    .line 73649
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A07:Z

    .line 73650
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:Z

    .line 73651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0C:Lcom/facebook/ads/redexgen/X/dL;

    .line 73652
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yb;->A02:Lcom/facebook/ads/redexgen/X/Yf;

    .line 73653
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Yb;)I
    .locals 0

    .line 73654
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 73655
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0C:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/XX;
    .locals 0

    .line 73656
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:Lcom/facebook/ads/redexgen/X/XX;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/Yf;
    .locals 0

    .line 73657
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A02:Lcom/facebook/ads/redexgen/X/Yf;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;
    .locals 0

    .line 73658
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;
    .locals 0

    .line 73659
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;
    .locals 0

    .line 73660
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;
    .locals 0

    .line 73661
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Yb;)Z
    .locals 0

    .line 73662
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Yb;)Z
    .locals 0

    .line 73663
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0B:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Yb;)Z
    .locals 0

    .line 73664
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A07:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Yb;)Z
    .locals 0

    .line 73665
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A08:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Yb;)Z
    .locals 0

    .line 73666
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A0D(I)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73667
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    .line 73668
    return-object p0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/XX;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A01:Lcom/facebook/ads/redexgen/X/XX;

    .line 73670
    return-object p0
.end method

.method public final A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73671
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A03:Ljava/lang/String;

    .line 73672
    return-object p0
.end method

.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73673
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A04:Ljava/lang/String;

    .line 73674
    return-object p0
.end method

.method public final A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A05:Ljava/lang/String;

    .line 73676
    return-object p0
.end method

.method public final A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73677
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A06:Ljava/lang/String;

    .line 73678
    return-object p0
.end method

.method public final A0J(Z)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73679
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A09:Z

    .line 73680
    return-object p0
.end method

.method public final A0K(Z)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73681
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0A:Z

    .line 73682
    return-object p0
.end method

.method public final A0L(Z)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 73683
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Yb;->A0B:Z

    .line 73684
    return-object p0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Yc;
    .locals 2

    .line 73685
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yc;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Yc;-><init>(Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/YZ;)V

    return-object v0
.end method
