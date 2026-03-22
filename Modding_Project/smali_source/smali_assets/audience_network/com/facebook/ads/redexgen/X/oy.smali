.class public final Lcom/facebook/ads/redexgen/X/oy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1N;,
        Lcom/facebook/ads/redexgen/X/1O;,
        Lcom/facebook/ads/redexgen/X/1M;,
        Lcom/facebook/ads/redexgen/X/1L;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/oy;

.field public static final A08:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/oy;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/lang/String;

.field public static final A0A:Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1N;

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3365
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SFReXFLlI4UOpNrTR2oqZFPGLDG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ddXxuwKTXrUgQKU5ch6dGlXzKHCNOB4g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ka5UQw68nW6F3F15EfeRiHjBxEcftjYi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TyFhGc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kpbiwOTtMuCD4LdTginQH36Spnec"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0F8UT5ylucYBCPc3EM7PRaW9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xfENz4MNKGXPVezlH9FH4FhAxccJ4akv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0RZwBffOFnQLfCTDTyZnu0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/oy;->A06:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1O;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/1O;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1O;->A05()Lcom/facebook/ads/redexgen/X/oy;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A07:Lcom/facebook/ads/redexgen/X/oy;

    .line 3366
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/lang/String;

    .line 3367
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0B:Ljava/lang/String;

    .line 3368
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0D:Ljava/lang/String;

    .line 3369
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/lang/String;

    .line 3370
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0C:Ljava/lang/String;

    .line 3371
    new-instance v0, Lcom/facebook/ads/redexgen/X/oz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oz;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oy;->A08:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 102611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102612
    iput p1, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    .line 102613
    iput p2, p0, Lcom/facebook/ads/redexgen/X/oy;->A03:I

    .line 102614
    iput p3, p0, Lcom/facebook/ads/redexgen/X/oy;->A05:I

    .line 102615
    iput p4, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    .line 102616
    iput p5, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:I

    .line 102617
    return-void
.end method

.method public synthetic constructor <init>(IIIIILcom/facebook/ads/redexgen/X/1K;)V
    .locals 0

    .line 102618
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/oy;-><init>(IIIII)V

    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/oy;
    .locals 5

    .line 102619
    new-instance v3, Lcom/facebook/ads/redexgen/X/1O;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/1O;-><init>()V

    .line 102620
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/1O;
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102621
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1O;->A01(I)Lcom/facebook/ads/redexgen/X/1O;

    .line 102622
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102623
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1O;->A02(I)Lcom/facebook/ads/redexgen/X/1O;

    .line 102624
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/oy;->A0D:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oy;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/oy;->A06:[Ljava/lang/String;

    const-string v1, "GWwDRzmwjjhTaGez4rqlH73J"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "f0ceflDKapN9i1ydncZgjkps1oFM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102625
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0D:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1O;->A04(I)Lcom/facebook/ads/redexgen/X/1O;

    .line 102626
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102627
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A09:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1O;->A00(I)Lcom/facebook/ads/redexgen/X/1O;

    .line 102628
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102629
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A0C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1O;->A03(I)Lcom/facebook/ads/redexgen/X/1O;

    .line 102630
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1O;->A05()Lcom/facebook/ads/redexgen/X/oy;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/1N;
    .locals 2

    .line 102631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:Lcom/facebook/ads/redexgen/X/1N;

    if-nez v0, :cond_0

    .line 102632
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1N;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1N;-><init>(Lcom/facebook/ads/redexgen/X/oy;Lcom/facebook/ads/redexgen/X/1K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:Lcom/facebook/ads/redexgen/X/1N;

    .line 102633
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A00:Lcom/facebook/ads/redexgen/X/1N;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 102634
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 102635
    return v3

    .line 102636
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 102637
    .end local v2
    :cond_1
    return v2

    .line 102638
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/oy;

    .line 102639
    .local v2, "other":Lcom/facebook/ads/redexgen/X/oy;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A03:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A05:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A04:I

    if-ne v1, v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 102640
    const/16 v0, 0x11

    .line 102641
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    add-int/2addr v1, v0

    .line 102642
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A03:I

    add-int/2addr v1, v0

    .line 102643
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A05:I

    add-int/2addr v1, v0

    .line 102644
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    add-int/2addr v1, v0

    .line 102645
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oy;->A04:I

    add-int/2addr v1, v0

    .line 102646
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
