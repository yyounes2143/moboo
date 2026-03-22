.class public final synthetic Lcom/google/firebase/messaging/Kkkkkkkkkkkkkkkkkkkk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/Kkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/Kkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
