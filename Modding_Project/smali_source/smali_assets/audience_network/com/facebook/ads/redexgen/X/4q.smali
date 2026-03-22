.class public final Lcom/facebook/ads/redexgen/X/4q;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 336
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wKs2F0CoKZ83CrYftessGgwUooVDkZ8i"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2Ibb583RxwN39nWjhOn5WWPQj1VmynHE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "A0Qs557f"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DKPVxx7rRSfdfe4bDqdhQ5dEhLiH9LON"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bebhf1UP90kEJwgsUj64UnMMPskca"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Y97MwE7h44FvVbPafIuJT7XHPF7ToAyu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yGLwGxqGR6Hkk5b2IyfusTMojDv2e"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vJPYkkaf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4q;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4n;)V
    .locals 0

    .line 14611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 4

    .line 14612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A09(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0A(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->ACy(I)V

    .line 14613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A00(Lcom/facebook/ads/redexgen/X/4n;)F

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0G()J

    move-result-wide v1

    long-to-float v0, v1

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    .line 14614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4n;->A01(Lcom/facebook/ads/redexgen/X/4n;F)F

    .line 14615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0A(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x1c

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 14616
    :goto_0
    return-void

    .line 14617
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4q;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4q;->A01:[Ljava/lang/String;

    const-string v1, "gUju5w26hU6oOlSn7mf4ATVXJhH4p8zJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "33WeYKtkMTovDIRRTCZ4bD6vTYI44Qru"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4n;->A1I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4n;->A1D()V

    goto :goto_0

    .line 14619
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A09(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cT;->ACZ()V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 14620
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4q;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method
