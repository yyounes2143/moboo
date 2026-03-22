.class public final Lcom/google/android/engage/service/zzae;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field protected final zza:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/service/zzae;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/engage/service/zzae;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/zzae;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
