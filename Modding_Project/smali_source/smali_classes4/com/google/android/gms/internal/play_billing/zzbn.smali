.class public final synthetic Lcom/google/android/gms/internal/play_billing/zzbn;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzck;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzck;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/google/android/gms/internal/play_billing/zzch;->zza:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p2, p2, Lcom/google/android/gms/internal/play_billing/zzch;->zzb:I

    .line 8
    .line 9
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzch;->zzb([Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
