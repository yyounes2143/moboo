.class public interface abstract annotation Lcom/google/android/engage/travel/datamodel/PointOfInterestEntity$EligibleContentCategory;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/travel/datamodel/PointOfInterestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "EligibleContentCategory"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_EDUCATION:I = 0x1

.field public static final TYPE_MEDICAL:I = 0xf

.field public static final TYPE_MOVIES_AND_TV_SHOWS:I = 0x3

.field public static final TYPE_SPORTS:I = 0x2

.field public static final TYPE_TRAVEL_AND_LOCAL:I = 0x8
