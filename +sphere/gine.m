% GINE                        Gine statistic for spherical uniformity 
% 
%     G = gine(U)
%
%     INPUTS
%     U - [n x p] matrix, n samples with dimensionality p
%         the data should already be projected to the unit hypersphere
%
%     OUTPUTS
%     G - statistic
%
%     REFERENCE
%     Mardia, KV, Jupp, PE (2000). Directional Statistics. John Wiley
%
%     SEE ALSO
%     uniSphereTest, spatialSign

%     $ Copyright (C) 2014 Brian Lau http://www.subcortex.net/ $
%     The full license and most recent version of the code can be found at:
%     https://github.com/brian-lau/highdim
%
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.

function G = gine(U)

[n,p] = size(U);

psi = sphere.psivec(U,n);
% eq. 10.7.5
G = n/2 - (p-1)/(2*n) * (gamma((p-1)/2)/gamma(p/2))^2 * sum(sin(psi));
