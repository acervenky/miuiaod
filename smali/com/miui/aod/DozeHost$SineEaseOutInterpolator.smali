.class public Lcom/miui/aod/DozeHost$SineEaseOutInterpolator;
.super Ljava/lang/Object;
.source "DozeHost.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SineEaseOutInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/DozeHost;


# direct methods
.method public constructor <init>(Lcom/miui/aod/DozeHost;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/DozeHost$SineEaseOutInterpolator;->this$0:Lcom/miui/aod/DozeHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    float-to-double p0, p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
