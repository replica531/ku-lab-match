import * as React from "react";
import AppBar from "@mui/material/AppBar";
import Box from "@mui/material/Box";
import Toolbar from "@mui/material/Toolbar";
import Typography from "@mui/material/Typography";
import ScienceIcon from '@mui/icons-material/Science';
import Link from "@mui/material/Link";
import { AuthButton } from "@/components/auth/AuthButton";
import { useAuth0 } from "@auth0/auth0-react";
import { UserIconButton } from "@/components/auth/UserIconButton";

export default function Header() {
  const auth0 = useAuth0();
  return (
    <Box sx={{ flexGrow: 1, bgcolor: "white" }}>
      <AppBar
        color="inherit"
        position="static"
        sx={{ px: { xs: 4, md: 32, xl: 64 } }}
      >
        <Toolbar>
          <Link href="/" color="black" underline="none">
            <ScienceIcon
              color="primary"
              sx={{ mr: 1 }}
            />
          </Link>
          <Typography variant="h5" component="div" sx={{ flexGrow: 1 }}>
            研究室希望調査
          </Typography>
          {auth0.isAuthenticated && !auth0.isLoading ? (
            <UserIconButton
              isAuthenticated={auth0.isAuthenticated}
              isLoading={auth0.isLoading}
              imageUrl={"https://picsum.photos/300/200"}
              onLogout={() => auth0.logout({ returnTo: window.location.origin })}
            />
          ) : (
            <AuthButton
              isAuthenticated={auth0.isAuthenticated}
              isLoading={auth0.isLoading}
              onLogin={() => auth0.loginWithRedirect()}
            />
          )}
        </Toolbar>
      </AppBar>
    </Box>
  );
}
