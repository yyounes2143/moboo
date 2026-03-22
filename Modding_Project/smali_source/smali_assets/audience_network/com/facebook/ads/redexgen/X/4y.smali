.class public final Lcom/facebook/ads/redexgen/X/4y;
.super Lcom/facebook/ads/redexgen/X/DN;
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

    .line 337
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7gUYNYKFrrI6cUcpcHgvAqL4Gs6ZbmaO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eulXJJXioKb3UmnXwerKdv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DeECHluE8BU5loeJcqNW1HYG1mHcuBH8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x81kE4wfDh8vlLxHq80CctXU2mbMn00Z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zBHmazzeC9pHgiKU9uedQ6l4AdxQz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WRgOWCAEbqLirqS5ZGHJuFqEkTHfhP5W"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "572CNMLKJv9WD0LgrUqd1zfS4LkJfaLe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "B1saI0DOHUkU6pw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4y;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4n;)V
    .locals 0

    .line 14636
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 10

    .line 14637
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4n;->A0T(Lcom/facebook/ads/redexgen/X/4n;Z)Z

    .line 14638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    .line 14640
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A04(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 14641
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A05()Ljava/lang/String;

    move-result-object v0

    .line 14642
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 14643
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v6

    .line 14644
    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/N3;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v3

    .line 14645
    .local v0, "adAction":Lcom/facebook/ads/redexgen/X/MH;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A04(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 14646
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 14647
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0h()D

    move-result-wide v1

    double-to-float v0, v1

    .line 14648
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wa;->A00(F)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    .line 14649
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14650
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/MH;->A0C(Lcom/facebook/ads/redexgen/X/MH;)Ljava/lang/String;

    move-result-object v9

    .line 14651
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/LH;->AJw(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 14652
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4n;->A0N(Lcom/facebook/ads/redexgen/X/4n;I)V

    .line 14653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A07(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->setVisibility(I)V

    .line 14654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A07(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/KL;

    if-eqz v0, :cond_0

    .line 14655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A07(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/KL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    .line 14656
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0q(I)V

    .line 14657
    .end local v0    # "adAction":Lcom/facebook/ads/redexgen/X/MH;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14658
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4y;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4y;->A01:[Ljava/lang/String;

    const-string v1, "UfF1b519MGYLAJGTcPK3SRNJ7v4WOh3N"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9iqifXeSGzjDh5N7cdDazqMOJ7agOy96"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4n;->A0B(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A08(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Cw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14659
    :cond_2
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 14660
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4y;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method
