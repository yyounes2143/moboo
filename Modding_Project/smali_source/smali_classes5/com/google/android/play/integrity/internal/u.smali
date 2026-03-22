.class public final synthetic Lcom/google/android/play/integrity/internal/u;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/google/android/play/integrity/internal/ae;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/integrity/internal/ae;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/integrity/internal/u;->a:Lcom/google/android/play/integrity/internal/ae;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/u;->a:Lcom/google/android/play/integrity/internal/ae;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->k(Lcom/google/android/play/integrity/internal/ae;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
