.class public final Lcom/facebook/ads/redexgen/X/QW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/QV;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Qg;",
            ">;"
        }
    .end annotation
.end field

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Qe;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Qg;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Qg;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qg;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A08:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1521
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "d6jyZ4YF4aAx6mY2oyMV8cMH3x1tTmGX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6ShmsSFKDmdiSeaEbVJI0pMmhv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jy6CLSdjiTJVmxisrmhO9od6ZqYVQGpz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aKDRqPZxmSwbRmY5O7VQCqOvGq0yRVmO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vr6xx06LqTBYtEPA9ZzozSqPDwzkbNaY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y84hViIy7qYskGYmJ3QVEouknT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QW;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 1

    .line 59731
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    .line 59733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    .line 59734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    .line 59735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    .line 59736
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A07:Ljava/util/List;

    .line 59737
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A03:I

    .line 59738
    iput v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A00:I

    return-void
.end method

.method private final A00(IZ)Landroid/view/View;
    .locals 2

    .line 59739
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/QW;->A0I(IZJ)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    return-object v0
.end method

.method private final A01(I)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 10

    .line 59740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v2, "changedScrapSize":I
    if-nez v8, :cond_1

    .line 59741
    .end local v2    # "changedScrapSize":I
    :cond_0
    return-object v9

    .line 59742
    :cond_1
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x20

    if-ge v2, v8, :cond_3

    .line 59743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Qg;

    .line 59744
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 59745
    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 59746
    return-object v1

    .line 59747
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59748
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0M()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/gM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gM;->A04(I)I

    move-result v1

    .line 59750
    .local v0, "offsetPosition":I
    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 59751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QC;->A0D(I)J

    move-result-wide v5

    .line 59752
    .local v4, "id":J
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 59753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Qg;

    .line 59754
    .local v7, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0m()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0Q()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-nez v0, :cond_4

    .line 59755
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 59756
    return-object v3

    .line 59757
    .end local v7    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59758
    .end local v0    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    :cond_5
    return-object v9
.end method

.method private final A02(IZ)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 6

    .line 59759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 59760
    .local v0, "scrapCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 59761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Qg;

    .line 59762
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 59763
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Qd;->A09:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59764
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 59765
    return-object v1

    .line 59766
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59767
    .end local v1    # "i":I
    :cond_2
    if-nez p2, :cond_4

    .line 59768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A08(I)Landroid/view/View;

    move-result-object v2

    .line 59769
    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 59770
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v4

    .line 59771
    .local v2, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Pm;->A0G(Landroid/view/View;)V

    .line 59772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Pm;->A07(Landroid/view/View;)I

    move-result v1

    .line 59773
    .local v3, "layoutIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 59774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pm;->A0C(I)V

    .line 59775
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/QW;->A0S(Landroid/view/View;)V

    .line 59776
    const/16 v0, 0x2020

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 59777
    return-object v4

    .line 59778
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x235

    const/16 v1, 0x34

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 59779
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59780
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "vh":Lcom/facebook/ads/redexgen/X/Qg;
    .end local v3    # "layoutIndex":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 59781
    .local v1, "cacheSize":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 59782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Qg;

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59783
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "JIr6ryR6hWTh2WYmHdarh5TP4xAypylw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "npmC62BAQEqZygYceoAiNhkQGghR92x0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0f()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 59784
    if-nez p2, :cond_6

    .line 59785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59786
    :cond_6
    return-object v3

    .line 59787
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59788
    .end local v2    # "i":I
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A03(JIZ)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 7

    .line 59789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59790
    .local v0, "count":I
    add-int/lit8 v5, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v5, :cond_5

    .line 59791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Qg;

    .line 59792
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0Q()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59793
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0N()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 59794
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 59795
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59796
    :cond_0
    if-nez p4, :cond_2

    .line 59797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59798
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "QSy8SYzj9TGZXONlvrRd2Hl7xNggaX2t"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FStY7c67BTbAcWAeNWEJdNOuKPlMCdqH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/6g;->removeDetachedView(Landroid/view/View;Z)V

    .line 59799
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QW;->A0R(Landroid/view/View;)V

    .line 59800
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "3Wf6vMFZ4V6K3VYEAeXlgILB3Kqn8tmj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2gRFj7AUivxslEY3Do0gPT185jjA6g6i"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 59801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-nez v0, :cond_4

    .line 59802
    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0a(II)V

    .line 59803
    :cond_4
    return-object v3

    .line 59804
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59805
    .local v1, "cacheSize":I
    add-int/lit8 v5, v0, -0x1

    .local v2, "i":I
    :goto_2
    const/4 v4, 0x0

    if-ltz v5, :cond_a

    .line 59806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Qg;

    .line 59807
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0Q()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_8

    .line 59808
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0N()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 59809
    if-nez p4, :cond_6

    .line 59810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59811
    :cond_6
    return-object v3

    .line 59812
    :cond_7
    if-nez p4, :cond_8

    .line 59813
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/QW;->A07(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59814
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 59815
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "Px4MCeB3tpw5Kws4bgsL6OQ2tD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cZzmTfGm3PDqBsfSjCaAnG9aB7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v4

    .line 59816
    .end local v2    # "i":I
    :cond_a
    return-object v4
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QW;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x277

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QW;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        0x38t
        0x22t
        0x10t
        0x25t
        0x25t
        0x30t
        0x32t
        0x39t
        0x34t
        0x35t
        0x6bt
        0x38t
        0x56t
        0x11t
        0x18t
        0x18t
        0xdt
        0x1bt
        0xat
        0x44t
        0x20t
        0x27t
        0x29t
        0x40t
        0x7dt
        0x6ct
        0x64t
        0x29t
        0x6at
        0x66t
        0x7ct
        0x67t
        0x7dt
        0x33t
        0x4ft
        0x48t
        0x15t
        0x12t
        0x7t
        0x12t
        0x3t
        0x5ct
        0x79t
        0x5bt
        0x56t
        0x56t
        0x5ft
        0x5et
        0x1at
        0x49t
        0x59t
        0x48t
        0x5bt
        0x4at
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x1at
        0x4dt
        0x53t
        0x4et
        0x52t
        0x1at
        0x5bt
        0x54t
        0x1at
        0x53t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x14t
        0x1at
        0x73t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x49t
        0x1at
        0x59t
        0x5bt
        0x54t
        0x54t
        0x55t
        0x4et
        0x1at
        0x58t
        0x5ft
        0x1at
        0x48t
        0x5ft
        0x4ft
        0x49t
        0x5ft
        0x5et
        0x1at
        0x5ct
        0x48t
        0x55t
        0x57t
        0x1at
        0x49t
        0x59t
        0x48t
        0x5bt
        0x4at
        0x16t
        0x1at
        0x4et
        0x52t
        0x5ft
        0x43t
        0x1at
        0x49t
        0x52t
        0x55t
        0x4ft
        0x56t
        0x5et
        0x1at
        0x48t
        0x5ft
        0x58t
        0x55t
        0x4ft
        0x54t
        0x5et
        0x1at
        0x5ct
        0x48t
        0x55t
        0x57t
        0x1at
        0x48t
        0x5ft
        0x59t
        0x43t
        0x59t
        0x56t
        0x5ft
        0x48t
        0x1at
        0x4at
        0x55t
        0x55t
        0x56t
        0x14t
        0x74t
        0x53t
        0x5et
        0x52t
        0x53t
        0x4et
        0x54t
        0x4et
        0x49t
        0x58t
        0x53t
        0x5et
        0x44t
        0x1dt
        0x59t
        0x58t
        0x49t
        0x58t
        0x5et
        0x49t
        0x58t
        0x59t
        0x13t
        0x1dt
        0x74t
        0x53t
        0x4bt
        0x5ct
        0x51t
        0x54t
        0x59t
        0x1dt
        0x54t
        0x49t
        0x58t
        0x50t
        0x1dt
        0x4dt
        0x52t
        0x4et
        0x54t
        0x49t
        0x54t
        0x52t
        0x53t
        0x1dt
        0x1ft
        0x38t
        0x35t
        0x39t
        0x38t
        0x25t
        0x3ft
        0x25t
        0x22t
        0x33t
        0x38t
        0x35t
        0x2ft
        0x76t
        0x32t
        0x33t
        0x22t
        0x33t
        0x35t
        0x22t
        0x33t
        0x32t
        0x78t
        0x76t
        0x1ft
        0x38t
        0x20t
        0x37t
        0x3at
        0x3ft
        0x32t
        0x76t
        0x20t
        0x3ft
        0x33t
        0x21t
        0x76t
        0x3et
        0x39t
        0x3at
        0x32t
        0x33t
        0x24t
        0x76t
        0x37t
        0x32t
        0x37t
        0x26t
        0x22t
        0x33t
        0x24t
        0x76t
        0x26t
        0x39t
        0x25t
        0x3ft
        0x22t
        0x3ft
        0x39t
        0x38t
        0x59t
        0x7et
        0x66t
        0x71t
        0x7ct
        0x79t
        0x74t
        0x30t
        0x79t
        0x64t
        0x75t
        0x7dt
        0x30t
        0x60t
        0x7ft
        0x63t
        0x79t
        0x64t
        0x79t
        0x7ft
        0x7et
        0x30t
        0x12t
        0x22t
        0x33t
        0x20t
        0x31t
        0x31t
        0x24t
        0x25t
        0x61t
        0x2et
        0x33t
        0x61t
        0x20t
        0x35t
        0x35t
        0x20t
        0x22t
        0x29t
        0x24t
        0x25t
        0x61t
        0x37t
        0x28t
        0x24t
        0x36t
        0x32t
        0x61t
        0x2ct
        0x20t
        0x38t
        0x61t
        0x2ft
        0x2et
        0x35t
        0x61t
        0x23t
        0x24t
        0x61t
        0x33t
        0x24t
        0x22t
        0x38t
        0x22t
        0x2dt
        0x24t
        0x25t
        0x6ft
        0x61t
        0x28t
        0x32t
        0x12t
        0x22t
        0x33t
        0x20t
        0x31t
        0x7bt
        0x6ct
        0x55t
        0x48t
        0x18t
        0x5ct
        0x5dt
        0x4ct
        0x59t
        0x5bt
        0x50t
        0x5dt
        0x5ct
        0x18t
        0x4et
        0x51t
        0x5dt
        0x4ft
        0x18t
        0x4bt
        0x50t
        0x57t
        0x4dt
        0x54t
        0x5ct
        0x18t
        0x5at
        0x5dt
        0x18t
        0x4at
        0x5dt
        0x55t
        0x57t
        0x4et
        0x5dt
        0x5ct
        0x18t
        0x5et
        0x4at
        0x57t
        0x55t
        0x18t
        0x6at
        0x5dt
        0x5bt
        0x41t
        0x5bt
        0x54t
        0x5dt
        0x4at
        0x6et
        0x51t
        0x5dt
        0x4ft
        0x18t
        0x5at
        0x5dt
        0x5et
        0x57t
        0x4at
        0x5dt
        0x18t
        0x51t
        0x4ct
        0x18t
        0x5bt
        0x59t
        0x56t
        0x18t
        0x5at
        0x5dt
        0x18t
        0x4at
        0x5dt
        0x5bt
        0x41t
        0x5bt
        0x54t
        0x5dt
        0x5ct
        0x2t
        0x18t
        0x57t
        0x71t
        0x7at
        0x6at
        0x6dt
        0x64t
        0x23t
        0x77t
        0x6ct
        0x23t
        0x71t
        0x66t
        0x60t
        0x7at
        0x60t
        0x6ft
        0x66t
        0x23t
        0x62t
        0x6dt
        0x23t
        0x6at
        0x64t
        0x6dt
        0x6ct
        0x71t
        0x66t
        0x67t
        0x23t
        0x75t
        0x6at
        0x66t
        0x74t
        0x23t
        0x6bt
        0x6ct
        0x6ft
        0x67t
        0x66t
        0x71t
        0x2dt
        0x23t
        0x5at
        0x6ct
        0x76t
        0x23t
        0x70t
        0x6bt
        0x6ct
        0x76t
        0x6ft
        0x67t
        0x23t
        0x65t
        0x6at
        0x71t
        0x70t
        0x77t
        0x23t
        0x60t
        0x62t
        0x6ft
        0x6ft
        0x23t
        0x70t
        0x77t
        0x6ct
        0x73t
        0x4at
        0x64t
        0x6dt
        0x6ct
        0x71t
        0x6at
        0x6dt
        0x64t
        0x55t
        0x6at
        0x66t
        0x74t
        0x2bt
        0x75t
        0x6at
        0x66t
        0x74t
        0x2at
        0x23t
        0x61t
        0x66t
        0x65t
        0x6ct
        0x71t
        0x66t
        0x23t
        0x60t
        0x62t
        0x6ft
        0x6ft
        0x6at
        0x6dt
        0x64t
        0x23t
        0x71t
        0x66t
        0x60t
        0x7at
        0x60t
        0x6ft
        0x66t
        0x2dt
        0x30t
        0x32t
        0x23t
        0x1t
        0x3et
        0x32t
        0x20t
        0x11t
        0x38t
        0x25t
        0x7t
        0x38t
        0x24t
        0x3et
        0x23t
        0x3et
        0x38t
        0x39t
        0x16t
        0x39t
        0x33t
        0x3t
        0x2et
        0x27t
        0x32t
        0x1dt
        0x10t
        0x8t
        0x1et
        0x4t
        0x5t
        0x51t
        0x18t
        0x1ft
        0x15t
        0x14t
        0x9t
        0x51t
        0x2t
        0x19t
        0x1et
        0x4t
        0x1dt
        0x15t
        0x51t
        0x1ft
        0x1et
        0x5t
        0x51t
        0x13t
        0x14t
        0x51t
        0x5ct
        0x40t
        0x51t
        0x10t
        0x17t
        0x5t
        0x14t
        0x3t
        0x51t
        0x4t
        0x1ft
        0x19t
        0x18t
        0x15t
        0x18t
        0x1ft
        0x16t
        0x51t
        0x10t
        0x51t
        0x7t
        0x18t
        0x14t
        0x6t
        0x4bt
        0x45t
        0x44t
        0x7ct
        0x43t
        0x4ft
        0x5dt
        0x78t
        0x4ft
        0x49t
        0x53t
        0x49t
        0x46t
        0x4ft
        0x4et
    .end array-data
.end method

.method private final A06()V
    .locals 1

    .line 59817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59818
    .local v0, "count":I
    add-int/lit8 v0, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 59819
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/QW;->A07(I)V

    .line 59820
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 59821
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59822
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A10()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A02:Lcom/facebook/ads/redexgen/X/gJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gJ;->A02()V

    .line 59824
    :cond_1
    return-void
.end method

.method private final A07(I)V
    .locals 2

    .line 59825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Qg;

    .line 59826
    .local v0, "viewHolder":Lcom/facebook/ads/redexgen/X/Qg;
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A0Z(Lcom/facebook/ads/redexgen/X/Qg;Z)V

    .line 59827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59828
    return-void
.end method

.method private A08(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 59829
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    .local v0, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 59830
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 59831
    .local v2, "view":Landroid/view/View;
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 59832
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/QW;->A08(Landroid/view/ViewGroup;Z)V

    .line 59833
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 59834
    .end local v0    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 59835
    return-void

    .line 59836
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 59837
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 59838
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 59839
    .end local v0
    :goto_1
    return-void

    .line 59840
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 59841
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 59842
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 5

    .line 59843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59844
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    .line 59845
    .local v0, "itemView":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/P3;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 59846
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/P3;->A09(Landroid/view/View;I)V

    .line 59847
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/P3;->A0F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59848
    const/16 v4, 0x4000

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "r5izwM6EITTd8J0QgfTuliuK3Ylx6gnH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "CLm8SGIYJT8sX0J5oMrTiG0qZUHKeksn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 59849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A09:Lcom/facebook/ads/redexgen/X/g1;

    .line 59850
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/g1;->A0A()Lcom/facebook/ads/redexgen/X/Oh;

    move-result-object v0

    .line 59851
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/P3;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Oh;)V

    .line 59852
    .end local v0    # "itemView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 2

    .line 59853
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 59854
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A08(Landroid/view/ViewGroup;Z)V

    .line 59855
    :cond_0
    return-void
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 3

    .line 59856
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 59857
    const/16 v2, 0x269

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59858
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    if-eqz v0, :cond_1

    .line 59859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0t:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Qo;->A0B(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59860
    :cond_1
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/Qg;)Z
    .locals 6

    .line 59861
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    return v0

    .line 59863
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A03:I

    if-ltz v0, :cond_4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 59864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 59865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QC;->A0C(I)I

    move-result v1

    .line 59866
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0N()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 59867
    return v5

    .line 59868
    .end local v0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0M()Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_3

    .line 59869
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0Q()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QC;->A0D(I)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 59870
    :cond_3
    return v0

    .line 59871
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd3

    const/16 v1, 0x3c

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 59872
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Qg;IIJ)Z
    .locals 8

    .line 59873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 59874
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0N()I

    move-result v3

    .line 59875
    .local v0, "viewType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getNanoTime()J

    move-result-wide v4

    .line 59876
    .local v7, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    move-wide v6, p4

    cmp-long v0, v6, v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    .line 59877
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/QV;->A0A(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59878
    const/4 v0, 0x0

    return v0

    .line 59879
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/QC;->A0J(Lcom/facebook/ads/redexgen/X/Qg;I)V

    .line 59880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getNanoTime()J

    move-result-wide v0

    .line 59881
    .local v1, "endBindNs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0N()I

    move-result v2

    sub-long/2addr v0, v4

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/QV;->A05(IJ)V

    .line 59882
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QW;->A09(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59884
    iput p3, p1, Lcom/facebook/ads/redexgen/X/Qg;->A04:I

    .line 59885
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0E()I
    .locals 1

    .line 59886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final A0F(I)Landroid/view/View;
    .locals 1

    .line 59887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    return-object v0
.end method

.method public final A0G(I)Landroid/view/View;
    .locals 1

    .line 59888
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A00(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/QV;
    .locals 1

    .line 59889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    if-nez v0, :cond_0

    .line 59890
    new-instance v0, Lcom/facebook/ads/redexgen/X/QV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/QV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    .line 59891
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    return-object v0
.end method

.method public final A0I(IZJ)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 22

    .line 59892
    move-object/from16 v4, p0

    move-object v4, v4

    move/from16 v13, p1

    if-ltz v13, :cond_18

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v0

    if-ge v13, v0, :cond_18

    .line 59893
    const/4 v9, 0x0

    .line 59894
    .local v0, "fromScrapOrHiddenOrCache":Z
    const/4 v11, 0x0

    .line 59895
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 59896
    invoke-direct {v4, v13}, Lcom/facebook/ads/redexgen/X/QW;->A01(I)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v11

    .line 59897
    if-eqz v11, :cond_a

    const/4 v9, 0x1

    .line 59898
    :cond_0
    :goto_0
    move/from16 v6, p2

    if-nez v11, :cond_5

    .line 59899
    invoke-direct {v4, v13, v6}, Lcom/facebook/ads/redexgen/X/QW;->A02(IZ)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v11

    .line 59900
    if-eqz v11, :cond_5

    .line 59901
    invoke-direct {v4, v11}, Lcom/facebook/ads/redexgen/X/QW;->A0C(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59902
    if-nez v6, :cond_4

    .line 59903
    const/4 v7, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59904
    :cond_1
    const/4 v9, 0x1

    goto :goto_3

    .line 59905
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 59906
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59907
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/6g;->removeDetachedView(Landroid/view/View;Z)V

    .line 59908
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0Y()V

    .line 59909
    :cond_3
    :goto_2
    invoke-virtual {v4, v11}, Lcom/facebook/ads/redexgen/X/QW;->A0X(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59910
    :cond_4
    const/4 v11, 0x0

    .line 59911
    :cond_5
    :goto_3
    move-wide/from16 v14, p3

    if-nez v11, :cond_f

    .line 59912
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/gM;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/gM;->A04(I)I

    move-result v7

    .line 59913
    .local v2, "offsetPosition":I
    if-ltz v7, :cond_c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v0

    if-ge v7, v0, :cond_c

    .line 59914
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/QC;->A0C(I)I

    move-result v2

    .line 59915
    .local v3, "type":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0M()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59916
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/QC;->A0D(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v2, v6}, Lcom/facebook/ads/redexgen/X/QW;->A03(JIZ)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v11

    .line 59917
    if-eqz v11, :cond_6

    .line 59918
    iput v7, v11, Lcom/facebook/ads/redexgen/X/Qg;->A03:I

    .line 59919
    const/4 v9, 0x1

    .line 59920
    :cond_6
    if-nez v11, :cond_8

    const/4 v0, 0x0

    if-eqz v0, :cond_8

    .line 59921
    const/16 v2, 0x21c

    const/16 v1, 0x19

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59922
    :cond_7
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59923
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0U()V

    goto :goto_2

    .line 59924
    .end local v4
    :cond_8
    if-nez v11, :cond_9

    .line 59925
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/QW;->A0H()Lcom/facebook/ads/redexgen/X/QV;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QV;->A03(I)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v11

    .line 59926
    if-eqz v11, :cond_9

    .line 59927
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0W()V

    .line 59928
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/6g;->A1C:Z

    if-eqz v0, :cond_9

    .line 59929
    invoke-direct {v4, v11}, Lcom/facebook/ads/redexgen/X/QW;->A0A(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59930
    :cond_9
    if-nez v11, :cond_f

    .line 59931
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getNanoTime()J

    move-result-wide v18

    .line 59932
    .local v4, "start":J
    const-wide v7, 0x7fffffffffffffffL

    sget-object v6, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x1

    aget-object v6, v6, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    goto/16 :goto_1

    .line 59933
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    sget-object v6, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "boNM8OY2bTpFYgdjXbnYcgq0xZrcwPhs"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    const-string v1, "UkhWCoe8HTTYlCSa40rnYF5pqDe823no"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    cmp-long v0, v14, v7

    if-eqz v0, :cond_d

    .line 59934
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    .line 59935
    move/from16 v17, v2

    move-wide/from16 v20, v14

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/QV;->A0B(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 59936
    const/4 v0, 0x0

    return-object v0

    .line 59937
    .end local v3    # "type":I
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa5

    const/16 v1, 0x2e

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xd

    const/16 v1, 0x8

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x23

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    .line 59938
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59939
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/QC;->A0E(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v11

    .line 59940
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A10()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59941
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A0H(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v1

    .line 59942
    .local v11, "innerView":Lcom/facebook/ads/redexgen/X/6g;
    if-eqz v1, :cond_e

    .line 59943
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A09:Ljava/lang/ref/WeakReference;

    .line 59944
    .end local v11    # "innerView":Lcom/facebook/ads/redexgen/X/6g;
    :cond_e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getNanoTime()J

    move-result-wide v0

    .line 59945
    .local v11, "end":J
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    sub-long v0, v0, v18

    invoke-virtual {v6, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/QV;->A06(IJ)V

    .line 59946
    .end local v0    # "fromScrapOrHiddenOrCache":Z
    .end local v1    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    .local v11, "fromScrapOrHiddenOrCache":Z
    .local v12, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_f
    if-eqz v9, :cond_10

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-nez v0, :cond_10

    .line 59947
    const/16 v1, 0x2000

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0o(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59948
    invoke-virtual {v11, v5, v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0a(II)V

    .line 59949
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Qd;->A0C:Z

    if-eqz v0, :cond_10

    .line 59950
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/QK;->A06(Lcom/facebook/ads/redexgen/X/Qg;)I

    move-result v0

    .line 59951
    .local v0, "changeFlags":I
    or-int/lit16 v5, v0, 0x1000

    .line 59952
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6g;->A05:Lcom/facebook/ads/redexgen/X/QK;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    .line 59953
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0R()Ljava/util/List;

    move-result-object v0

    .line 59954
    invoke-virtual {v2, v1, v11, v5, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0F(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Qg;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v1

    .line 59955
    .local v1, "info":Lcom/facebook/ads/redexgen/X/QJ;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v11, v1}, Lcom/facebook/ads/redexgen/X/6g;->A1k(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 59956
    .end local v0    # "changeFlags":I
    .end local v1    # "info":Lcom/facebook/ads/redexgen/X/QJ;
    :cond_10
    const/4 v7, 0x0

    .line 59957
    .local v13, "bound":Z
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 59958
    iput v13, v11, Lcom/facebook/ads/redexgen/X/Qg;->A04:I

    .line 59959
    .end local v14
    :cond_11
    :goto_4
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 59960
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_13

    .line 59961
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/QP;

    .line 59962
    .local v1, "rvLayoutParams":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59963
    .restart local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/QP;
    :goto_5
    iput-object v11, v5, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/Qg;

    .line 59964
    if-eqz v9, :cond_12

    if-eqz v7, :cond_12

    :goto_6
    iput-boolean v3, v5, Lcom/facebook/ads/redexgen/X/QP;->A02:Z

    .line 59965
    return-object v11

    .line 59966
    :cond_12
    const/4 v3, 0x0

    goto :goto_6

    .line 59967
    .end local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/QP;
    :cond_13
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/6g;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "zCboBEvvN0uPYmtuolLcQSfyvv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "oQlbeeNPYINxaBCA8kGLswkn0x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v6, :cond_15

    .line 59968
    :goto_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/6g;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/QP;

    .line 59969
    .restart local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v6, :cond_15

    goto :goto_7

    .line 59970
    .end local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/QP;
    :cond_15
    check-cast v5, Lcom/facebook/ads/redexgen/X/QP;

    goto :goto_5

    .line 59971
    :cond_16
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0e()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0k()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0f()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59972
    :cond_17
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/gM;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/gM;->A04(I)I

    move-result v12

    .line 59973
    .local v14, "offsetPosition":I
    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/QW;->A0D(Lcom/facebook/ads/redexgen/X/Qg;IIJ)Z

    move-result v7

    goto/16 :goto_4

    .line 59974
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1
    .end local v11    # "fromScrapOrHiddenOrCache":Z
    .end local v12    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    .end local v13    # "bound":Z
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10f

    const/16 v1, 0x16

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x15

    const/16 v1, 0xe

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    .line 59975
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 59976
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qg;",
            ">;"
        }
    .end annotation

    .line 59977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A07:Ljava/util/List;

    return-object v0
.end method

.method public final A0K()V
    .locals 3

    .line 59978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 59979
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 59980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qg;

    .line 59981
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0S()V

    .line 59982
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59983
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 59984
    .local v1, "scrapCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 59985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0S()V

    .line 59986
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59987
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 59988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 59989
    .local v2, "changedScrapCount":I
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 59990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0S()V

    .line 59991
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 59992
    .end local v2    # "changedScrapCount":I
    .end local p0    # "i":I
    :cond_2
    return-void
.end method

.method public final A0L()V
    .locals 1

    .line 59993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 59995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59996
    :cond_0
    return-void
.end method

.method public final A0M()V
    .locals 4

    .line 59997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 59998
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 59999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qg;

    .line 60000
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/QP;

    .line 60001
    .local v3, "layoutParams":Lcom/facebook/ads/redexgen/X/QP;
    if-eqz v1, :cond_0

    .line 60002
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/QP;->A01:Z

    .line 60003
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    .end local v3    # "layoutParams":Lcom/facebook/ads/redexgen/X/QP;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60004
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final A0N()V
    .locals 4

    .line 60005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 60007
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 60008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Qg;

    .line 60009
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    if-eqz v1, :cond_0

    .line 60010
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 60011
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0c(Ljava/lang/Object;)V

    .line 60012
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60013
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QW;->A06()V

    .line 60014
    :cond_2
    return-void
.end method

.method public final A0O()V
    .locals 6

    .line 60015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/QO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/QO;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/QO;->A00:I

    .line 60016
    .local v0, "extraCache":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A00:I

    .line 60017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 60018
    .local v1, "i":I
    :goto_1
    if-ltz v5, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v3, p0, Lcom/facebook/ads/redexgen/X/QW;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "FM5srU9o6TBj8QlSYYqmaX9MZyJMPTMr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "mnADOFh1HT7Eu0tfTP5EsiAEmob0QgOc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-le v4, v3, :cond_2

    .line 60019
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/QW;->A07(I)V

    .line 60020
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 60021
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 60022
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final A0P()V
    .locals 1

    .line 60023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60024
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QW;->A06()V

    .line 60025
    return-void
.end method

.method public final A0Q(I)V
    .locals 0

    .line 60026
    iput p1, p0, Lcom/facebook/ads/redexgen/X/QW;->A03:I

    .line 60027
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QW;->A0O()V

    .line 60028
    return-void
.end method

.method public final A0R(Landroid/view/View;)V
    .locals 2

    .line 60029
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v1

    .line 60030
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A07(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QW;

    .line 60031
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0L(Lcom/facebook/ads/redexgen/X/Qg;Z)Z

    .line 60032
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0U()V

    .line 60033
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QW;->A0X(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 60034
    return-void
.end method

.method public final A0S(Landroid/view/View;)V
    .locals 4

    .line 60035
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v1

    .line 60036
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0o(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60037
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->A1y(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60038
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0M()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60039
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0b(Lcom/facebook/ads/redexgen/X/QW;Z)V

    .line 60040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60041
    :goto_0
    return-void

    .line 60042
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 60043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    .line 60044
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0b(Lcom/facebook/ads/redexgen/X/QW;Z)V

    .line 60045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60046
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x7a

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 60047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0T(Landroid/view/View;)V
    .locals 3

    .line 60048
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v2

    .line 60049
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60050
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/6g;->removeDetachedView(Landroid/view/View;Z)V

    .line 60051
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60052
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0Y()V

    .line 60053
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/QW;->A0X(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 60054
    return-void

    .line 60055
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60056
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0U()V

    goto :goto_0
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/QC;Lcom/facebook/ads/redexgen/X/QC;Z)V
    .locals 1

    .line 60057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QW;->A0P()V

    .line 60058
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QW;->A0H()Lcom/facebook/ads/redexgen/X/QV;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/QV;->A08(Lcom/facebook/ads/redexgen/X/QC;Lcom/facebook/ads/redexgen/X/QC;Z)V

    .line 60059
    return-void
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/QV;)V
    .locals 5

    .line 60060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    if-eqz v0, :cond_0

    .line 60061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QV;->A04()V

    .line 60062
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    .line 60063
    if-eqz p1, :cond_2

    .line 60064
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/QW;->A01:Lcom/facebook/ads/redexgen/X/QV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "lsZK0accpgBQgJYjkQv5Abfcayw6pcR0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Z7g3Rn3k4gV3vNYe90sCMa52PcoBzFf1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/QV;->A07(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 60065
    :cond_2
    return-void
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/Qe;)V
    .locals 0

    .line 60066
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QW;->A04:Lcom/facebook/ads/redexgen/X/Qe;

    .line 60067
    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 8

    .line 60068
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0h()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60069
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x125

    const/16 v1, 0x38

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60070
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0h()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    .line 60071
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60072
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0i()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "XmVzY8sdohxIZJ5Ojk7HGi6GVO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "m3xjIJQIi7Ro4dRZ8OgPCgQ0SJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v4, :cond_f

    .line 60073
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-nez v0, :cond_e

    .line 60074
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0K(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v7

    .line 60075
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    .line 60076
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QC;->A0N(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 60077
    .local v3, "forceRecycle":Z
    :goto_1
    const/4 v1, 0x0

    .line 60078
    .local v4, "cached":Z
    const/4 v6, 0x0

    .line 60079
    .local v5, "recycled":Z
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60080
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A00:I

    if-lez v0, :cond_a

    .line 60081
    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0o(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 60082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 60083
    .local v6, "cachedViewSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A00:I

    if-lt v4, v0, :cond_5

    if-lez v4, :cond_5

    .line 60084
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/QW;->A07(I)V

    .line 60085
    add-int/lit8 v4, v4, -0x1

    .line 60086
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_0

    .line 60087
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 60088
    .local v1, "targetCacheIndex":I
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "Q1OZT6LnkVYbRcYxNkw6Mn7gWXto99yC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "RVxEgLz70808ymY8dF1xTnmhZlFYlEUe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6g;->A10()Z

    move-result v0

    if-eqz v0, :cond_9

    if-lez v4, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A02:Lcom/facebook/ads/redexgen/X/gJ;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A03:I

    .line 60089
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gJ;->A05(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 60090
    add-int/lit8 v2, v4, -0x1

    .line 60091
    .local v7, "cacheIndex":I
    :goto_2
    if-ltz v2, :cond_8

    .line 60092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qg;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Qg;->A03:I

    .line 60093
    .local p0, "cachedPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A02:Lcom/facebook/ads/redexgen/X/gJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/gJ;->A05(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 60094
    :cond_8
    add-int/lit8 v4, v2, 0x1

    .line 60095
    .end local v7    # "cacheIndex":I
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 60096
    const/4 v1, 0x1

    .line 60097
    .end local v1    # "targetCacheIndex":I
    .end local v6    # "cachedViewSize":I
    :cond_a
    if-nez v1, :cond_b

    .line 60098
    invoke-virtual {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/QW;->A0Z(Lcom/facebook/ads/redexgen/X/Qg;Z)V

    .line 60099
    const/4 v6, 0x1

    .line 60100
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0t:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Qo;->A0B(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 60101
    if-nez v1, :cond_c

    if-nez v6, :cond_c

    if-eqz v7, :cond_c

    .line 60102
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 60103
    :cond_c
    return-void

    .line 60104
    .end local p0    # "cachedPos":I
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 60105
    goto :goto_2

    .line 60106
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x6e

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 60107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60108
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15d

    const/16 v1, 0x51

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QW;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 60109
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 4

    .line 60110
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0I(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60111
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QW;->A02:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60112
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QW;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60113
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/QW;->A0A:[Ljava/lang/String;

    const-string v1, "g9dUUHlnr2dNWy2bvXbXpUnxFV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "1VljHDZyW4yQ7QRXruVc6WBcEp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60114
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A07(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QW;

    .line 60115
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0L(Lcom/facebook/ads/redexgen/X/Qg;Z)Z

    .line 60116
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0U()V

    .line 60117
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/Qg;Z)V
    .locals 3

    .line 60118
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0s(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 60119
    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60120
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0a(II)V

    .line 60121
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/P3;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Oh;)V

    .line 60122
    :cond_0
    if-eqz p2, :cond_1

    .line 60123
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QW;->A0B(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 60124
    :cond_1
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A08:Lcom/facebook/ads/redexgen/X/6g;

    .line 60125
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QW;->A0H()Lcom/facebook/ads/redexgen/X/QV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QV;->A09(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 60126
    return-void
.end method
