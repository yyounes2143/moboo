.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hz;,
        Lcom/facebook/ads/redexgen/X/Hy;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Hz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 471
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hx;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 22605
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 22606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 22607
    .local v0, "eventsSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22608
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 22609
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hz;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Hz;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22611
    .end local v2    # "i":I
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    .line 22612
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/Hx;)V
    .locals 0

    .line 22613
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Hz;",
            ">;)V"
        }
    .end annotation

    .line 22614
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 22615
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    .line 22616
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
    .locals 4

    .line 22617
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v3

    .line 22618
    .local v0, "spliceCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22619
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 22620
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Hz;->A03(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Hz;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22622
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v0, v2}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 22623
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 22624
    .local v0, "eventsSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 22626
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hz;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Hz;->A05(Lcom/facebook/ads/redexgen/X/Hz;Landroid/os/Parcel;)V

    .line 22627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22628
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
