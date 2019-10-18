.class Lcom/miui/aod/settings/AODFragment$2;
.super Ljava/lang/Object;
.source "AODFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AODFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AODFragment;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AODFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment$2;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment$2;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
